# coding: utf-8

"""
sdd2cp.py - Converting SDDs to CPs
--------------------------------------------------

Interface to for converting formulas to CPs

..
	Part of the ProbLog distribution.

	Copyright 2015 KU Leuven, DTAI Research Group (ProbLog)
	Copyright 2017 KU Leuven, DTAI Research Group;
	UC Louvain, ICTEAM; and Leiden University, LIACS (SC-ProbLog)

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

		http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

--------------------------------------------------
File name:		  mipify_sdd.py
Author:			 Behrouz Babaki, Anna Latour
Date created:	   27/3/2017
Date last modified: 20/9/2017
Python Version:	 3.4
Short description:  Class for transforming SDD into MIP, and having it solved
					by Gurobi
Prerequisite:	   Obtain academic license and install Gurobi:
					http://www.gurobi.com/
"""


import sys, os
import enum
from timeit import default_timer as timer
from collections import namedtuple

sys.path.insert(0, '../modified-code/configurable-SDD-decomposition/swig')
from problog.sdd_formula import SDD
from problog.logic import Term
from cpsdd import Model

variable_branching_heur = {'lexicographical': 0,
                           'random': 1,
                           'smallest-merit': 2,    # not applicable in our experiments
                           'largest-merit': 3,     # not applicable in our experiments
                           'smallest-degree': 4,
                           'largest-degree': 5,
                           'smallest-afc': 6,
                           'largest-afc': 7,
                           'lowest-action': 8,
                           'highest-action': 9,
                           'lowest-chb': 10,
                           'highest-chb': 11}

ipl2int = {
    'def': 0,
    'val': 1,
    'bnd': 2,
    'dom': 3,
    'basic': 4,
    'advanced': 5,
    'basic,advanced': 6
}


MAXIMIZE = 1
MINIMIZE = -1
Bvar = namedtuple('binary_variable', ['id'])
Cvar = namedtuple('continuous_variable', ['id'])
Cval = namedtuple('continuous_value', ['value'])

class sdd_cp(object):
    def __init__(self, sdd, query_indices=None):
        start = timer()
        self.sdd = sdd
        self.model = Model()
        self.objective_set = False
        self.node_types = dict()
        self.vars = dict()
        self.dec_vars = []
        self.dec_names = []

        for node, term, ttype in self.sdd:
            if ttype == 'atom':
                if term.probability == Term('?'):
                    v = self.add_binary_variable()
                    self.vars[node] = v
                    self.dec_vars.append(v.id)
                    self.dec_names.append(term.name)
                else:
                    self.vars[node] = Cval(term.probability)
            elif ttype == 'conj':
                self.node_types[node] = 'conj'
            elif ttype == 'disj':
                self.node_types[node] = 'disj'
        self.queries = [x[1] for x in self.sdd.labeled()]
        if query_indices is None:
            query_indices = range(len(self.queries))
        for i in query_indices:
            self.get_var(self.queries[i])
            
    def add_binary_variable(self):
        v = self.model.addIntVar()
        return Bvar(v)
        
    def add_continuous_variable(self):
        v = self.model.addRealVar()
        return Cvar(v)

    def check_objective(self):
        if not self.objective_set:
            raise Exception('The objective should be set before any constraint is added')
            
    def set_objective(self):
        if self.objective_set:
            raise Warning('An objective is already specified')
        else:
            self.objective_set = True            
                
    def solve(self, timeout=None):
        print("called solve")
        if timeout is not None:
            self.model.setTimeOut(timeout*1000)
        start = timer()
        self.model.optimize()
        self.opt_time = timer() - start
        
        self.obj_val = None
        self.solution = None
        self.timed_out = self.model.timedOut()
        self.solved = self.model.hasSolution()
        if self.solved:
            self.obj_val = self.model.getObj()
            solution = self.model.getSolution(self.dec_vars)
            self.solution = dict()
            for i in range(len(solution)):
                self.solution[self.dec_names[i]] = solution[i]
            
    def get_var(self, node):
        if node in self.vars:
            return self.vars[node]

        children = self.sdd.get_node(node).children

        if self.node_types[node] == 'conj':
            v = self.get_prod(children)
        else:
            v = self.get_sum(children)
        self.vars[node] = v
        return v
    
    def get_argtype(self, v1, v2):
        if type(v1) == Bvar and type(v2) == Cval:
            x1 = v1.id
            x2 = v2.value
            argtype = 1
        elif type(v1) == Cval and type(v2) == Bvar:
            x1 = v2.id
            x2 = v1.value
            argtype = -1            
        elif type(v1) == Bvar and type(v2) == Bvar:
            x1 = v1.id
            x2 = v2.id
            argtype = 2
        elif type(v1) == Cvar and type(v2) == Cval:
            x1 = v1.id
            x2 = v2.value
            argtype = 3
        elif type(v1) == Cval and type(v2) == Cvar:
            x1 = v2.id
            x2 = v1.value
            argtype = -3
        elif type(v1) == Cvar and type(v2) == Cvar:
            x1 = v1.id
            x2 = v2.id
            argtype = 4            
        elif type(v1) == Bvar and type(v2) == Cvar:
            x1 = v1.id
            x2 = v2.id
            argtype = 5
        elif type(v1) == Cvar and type(v2) == Bvar:
            x1 = v2.id
            x2 = v1.id
            argtype = -5
        elif type(v1) == Cval and type(v2) == Cval:
            x1 = v1.value
            x2 = v2.value
            argtype = 6
        return argtype, float(x1), float(x2)
    
    def get_constype(self,ch1, ch2):
        constype = None
        if ch1 and ch2:
            constype = 0
        elif ch1 and not ch2:
            constype = 1
        elif not ch1 and ch2:
            constype = 2
        else:
            constype = 3
        return constype
    
    def get_types(self, v1, v2, ch1, ch2):
        argtype, x1, x2 = self.get_argtype(v1, v2)
        constype = self.get_constype(ch1, ch2)
        if argtype < 0:
            if constype == 2: constype = 1
            elif constype == 1: constype = 2
            argtype = -argtype
        return argtype, constype, x1, x2
        
    def get_prod(self, children):
        [v1, v2] = [self.get_var(abs(i)) for i in children]
        [ch1, ch2] = [i>0 for i in children]
        argtype, constype, x1, x2 = self.get_types(v1, v2, ch1, ch2)

        z = self.add_continuous_variable()
        self.model.addProd(argtype, constype, z.id, x1, x2)
        return z

    def get_sum(self, children):
        if len(children) == 2:
            [v1, v2] = [self.get_var(abs(i)) for i in children]
            [ch1, ch2] = [i > 0 for i in children]

        elif len(children) > 2:
            v1 = self.get_var(abs(children[0]))
            ch1 = (children[0] > 0)
            v2 = self.get_sum(children[1:])
            ch2 = True
            
        argtype, constype, x1, x2 = self.get_types(v1, v2, ch1, ch2)
        if type(v1) == Bvar and type(v2) == Bvar:
            z = self.add_binary_variable()
        else:
            z = self.add_continuous_variable()
        self.model.addSum(argtype, constype, z.id, x1, x2)
            
        return z        
    
    def set_objective_sumprob(self, indices, sense):
        self.set_objective()
        opt_vars = [self.get_var(self.queries[i]).id 
                            for i in indices]
        opt_sense = (sense==MAXIMIZE)
        self.model.setObjectiveSumProb(opt_vars, opt_sense)

    def set_objective_prob(self, index, sense):
        self.set_objective()
        opt_var = self.get_var(self.queries[index]).id
        opt_sense = (sense==MAXIMIZE)
        self.model.setObjectiveProb(opt_var, opt_sense)
        
    def set_objective_theory(self, sense):
        self.set_objective()
        opt_sense = (sense==MAXIMIZE)
        self.model.setObjectiveTheory(self.dec_vars, opt_sense)
            
    def add_constraint_prob(self, index, lb=None, ub=None):
        self.check_objective()
        cst_var = self.get_var(self.queries[index]).id
        if lb is not None:
            self.model.addConstraintProb(cst_var, False, lb)            
        if ub is not None:
            self.model.addConstraintProb(cst_var, True, ub)

    def add_constraint_sumprob(self, indices, lb=None, ub=None):
        self.check_objective()
        cst_vars = [self.get_var(self.queries[i]).id
                            for i in indices]
        if lb is not None:
            self.model.addConstraintSumProb(cst_vars, False, lb)
        if ub is not None:
            self.model.addConstraintSumProb(cst_vars, True, ub)
            
    def add_constraint_meanprob(self, indices, lb=None, ub=None):
        self.check_objective()
        n = len(indices)
        if lb is not None:        
            lb *= n
        if ub is not None:
            ub *= n
        self.add_constraint_sumprob(indices, lb, ub)             
            
    def add_constraint_theory(self, lb=None, ub=None):
        self.check_objective()
        if lb is not None:
            self.model.addConstraintTheory(False, lb)
        if ub is not None:
            self.model.addConstraintTheory(True, ub)

    def set_var_branching_heuristic(self, branching='lexicographical'):
        if branching not in variable_branching_heur.keys():
            raise Exception('The branching heuristic must be in '
                            '{lexicographical (default)|random|smallest-degree|'
                            'largest-degree|smallest-afc|largest-afc|'
                            'lowest-action|highest-action|lowest-chb|highest-chb}')
        else:
            self.model.setVarBranchingHeuristic(variable_branching_heur[branching])

    def set_val_branching_heuristic(self, branching=0):
        if not isinstance(branching, int) or branching not in [0, 1, 2]:
            raise Exception('The value branching heuristic must be in {0 (default)|1|2 (random)}')
        else:
            self.model.setValBranchingHeuristic(branching)

    def set_decay(self, decay=1.0):
        if not isinstance(decay, float) or decay < 0.0 or decay > 1.0:
            raise Exception('The decay must be in [0, 1]')
        else:
            self.model.setDecay(decay)

    def set_c_d(self, c_d=8):
        if not isinstance(c_d, int) or c_d < 0:
            raise Exception('The recomputation distance must be an integer >= 0 (default = 8)')
        else:
            self.model.setCD(c_d)

    def set_a_d(self, a_d=2):
        if not isinstance(a_d, int) or a_d < 0:
            raise Exception('The adaptive recomputation distance must be an integer >= 0 (default = 2)')
        else:
            self.model.setAD(a_d)

    def set_threads(self, threads=1):
        if not isinstance(threads, int) or threads < 0:
            raise Exception('The number of threads must be an integer >= 0 (default = 1)')
        else:
            self.model.setThreads(threads)

    def set_ipl(self, ipl='def'):
        if ipl not in ipl2int.keys():
            raise Exception('The integer propagation level must be in ' +
                            '{def (default)|val|bnd|dom|basic|advanced|basic,advanced}')
        else:
            self.model.setIPL(ipl2int[ipl])

    def set_seed(self, seed=42):
        if not isinstance(seed, int):
            raise Exception('The seed must be an integer')
        else:
            self.model.setSeed(seed)