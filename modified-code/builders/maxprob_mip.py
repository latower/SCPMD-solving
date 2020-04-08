#!/usr/bin/env python
# coding: utf-8

"""
maxprob_mip.py - Interface to for converting formulas to MIPs
--------------------------------------------------

@author: Anna Latour
@email:  a.l.d.latour@liacs.leidenuniv.nl
@author: Behrouz Babaki
@email:  behrouz.babaki@polymtl.ca

Relevant papers:
	Stochastic Constraint Propagation for Mining Probabilistic Networks.
	A.L.D. Latour, B. Babaki, and S. Nijssen. IJCAI 2019

    Stochastic Constraint Propagation for Mining Probabilistic Networks.
    A.L.D. Latour, B. Babaki, Daniël Fokkinga, Marie Anastacio,
    Holger Hoos, and S. Nijssen. Submitted to the Artificial
    Intelligence Journal in April 2020.

Licensed under MIT (https://github.com/latower/SCPMD-solving/blob/master/LICENSES/LICENSE).
"""


import sys
from gurobipy import Model, GRB
from bdd_reader import read_bdd

class MipBuilder(object):

	def __init__(self, bdd, threshold, nthreads):
		self.bdd = bdd
		self.model = Model('bdd')
		self.model.params.OutputFlag = 0
		if nthreads:
			self.model.Params.Threads = nthreads
		self.obj_val = None
		self.solution = None

		self.decision_vars = {v: self.model.addVar(lb=0.0, ub=1.0, vtype=GRB.BINARY) for v in bdd.max_vars}

		self.node_vars = dict()
		self.node_vars[-1] = self.model.addVar(lb=0.0, ub=0.0, vtype=GRB.CONTINUOUS)
		self.node_vars[-2] = self.model.addVar(lb=1.0, ub=1.0, vtype=GRB.CONTINUOUS)

		for root in bdd.roots:
			self.node_vars[root] = self.get_var(root)

		self.model.setObjective(sum(self.node_vars[r] for r in bdd.roots), GRB.MAXIMIZE)
		self.model.addConstr(sum(self.decision_vars.values()) <= threshold)

	def output(self, out_file):
		self.model.write(out_file)

	def get_var(self, node_id):
		if node_id in self.node_vars:
			return self.node_vars[node_id]

		bdd_node = self.bdd.bdd_nodes[node_id]
		bdd_var = self.bdd.bdd_vars[bdd_node.varid]

		hi_var = self.get_var(bdd_node.hi)
		lo_var = self.get_var(bdd_node.lo)
		var = self.model.addVar(lb=0.0, ub=1.0, vtype=GRB.CONTINUOUS)
		self.node_vars[node_id] = var

		if not bdd_var.is_decision:
			self.model.addConstr(var == bdd_var.pweight * hi_var + bdd_var.nweight * lo_var)
			return var

		dvar = self.decision_vars[bdd_var.id]
		p_true = self.model.addVar(lb=0.0, ub=1.0, vtype=GRB.CONTINUOUS)
		p_false = self.model.addVar(lb=0.0, ub=1.0, vtype=GRB.CONTINUOUS)

		self.model.addConstr(var == p_true + p_false)
		self.model.addConstr(p_true <= dvar)
		self.model.addConstr(p_true <= hi_var + 1 - dvar)
		self.model.addConstr(p_true >= hi_var - (1 - dvar))
		self.model.addConstr(p_false <= 1 - dvar)
		self.model.addConstr(p_false <= lo_var + dvar)
		self.model.addConstr(p_false >= lo_var - dvar)

		return var

	def solve(self):
		self.model.optimize()


		if self.model.Status == GRB.OPTIMAL:
			self.obj_val = self.model.ObjVal
			self.solution = {i : round(self.decision_vars[i].x)
							 for i in self.bdd.max_vars}

if __name__ == '__main__':
	if len(sys.argv) < 3:
		print('usage: %s BDD_FILE THRESHOLD [#THREADS]'%sys.argv[0])
		exit(1)

	bdd = read_bdd(sys.argv[1])
	nthreads = None
	if len(sys.argv) >= 4:
		nthreads = int(sys.argv[3])
	mb = MipBuilder(bdd, int(sys.argv[2]), nthreads)

	mb.solve()
	print(mb.obj_val)
	print(mb.solution)
