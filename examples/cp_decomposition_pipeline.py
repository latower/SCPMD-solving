# !/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Apr 7, 2020

author:         Anna Latour
e-mail:         a.l.d.latour@liacs.leidenuniv.nl
created:        Tue Apr 7, 2020
edited:         Wed Apr 8, 2020

description:    This is a minimal working example of how to run the CP
                decomposition pipeline for solving SCPMDs

Relevant paper: [Latour et al., 2020] (submitted)
                A.L.D. Latour, B. Babaki, D.Fokkinga, M. Anastacio, H. Hoos,
                S. Nijssen. Stochastic Constraint Propagation for Mining
                Probabilistic Networks, submitted to Artificial Intelligence
                Journal in April 2020.

usage:          python cp_decomposition_pipeline.py

Licensed under MIT (https://github.com/latower/SCPMD-solving/blob/master/LICENSES/LICENSE).
"""

import os
import subprocess
import sys

sys.path.insert(0, '../modified-code/builders')
sys.path.insert(0, '../modified-code/sc-problog/problog/lib/sdd')
# ProbLog 2 OBDD 2 MIP builders
from BDDbuilder import BDDBuilder
# ProbLog 2 SDD 2 MIP builders
from SDDbuilder import SDDBuilder
from sdd2cp import MAXIMIZE, MINIMIZE, sdd_cp

sys.path.insert(0, os.environ.get('PROBLOG_HOME') + '/problog')
from problog.program import PrologFile
from problog.formula import LogicDAG

GAC_BIN_DIR = os.environ.get('GECODE_GAC_BIN_DIR')
NO_GAC_BIN_DIR = os.environ.get('GECODE_NO_GAC_BIN_DIR')
k = 10  # constraint on cardinality of the solution

print("OBDD-to-MIP")

# Ground the program and compile OBDD
program = PrologFile('../benchmarks/high-voltage/initial-experiments/europe/hr_gcc_0_with_all_queries.pl')
dag = LogicDAG.create_from(program)
obdd = BDDBuilder(dag=dag, dynamic_minimization=True)

# Write OBDD to file
bdd_file_name = 'hr_gcc_with_all_queries.txt'
obdd.write_to_file(bdd_file_name)

# Specify parameters for solver
# For alternatives and other parameters, see configuration subdir
branching = 'lexicographical'

# Call Gecode
cmd = [GAC_BIN_DIR + '/decomposed',     # alternative: use NO_GAC_BIN_DIR
       '-branching', branching,
       '-optimization', 'maxprob',   # for the settings in this work
       '-threshold', str(k),
       bdd_file_name]
s = ''
with subprocess.Popen(cmd,
                      stdout=subprocess.PIPE,
                      stderr=subprocess.STDOUT,
                      preexec_fn=os.setsid,
                      universal_newlines=True) as process:
    try:
        outs, errs = process.communicate(timeout=600)
        s = outs
    except subprocess.TimeoutExpired:
        print("killing", process.pid)
        r = os.killpg(process.pid, signal.SIGTERM)
        s = process.communicate()[0]
        s = 'Call {cmd} timed out.'.format(cmd=' '.join(cmd))
    except Exception as e:
        s = 'Call {cmd} had unknown exception: {e}.'.format(
            cmd=' '.join(cmd), e=e)
print(s)

print("\nSDD-to-MIP")

# Specify parameters for solver
# For alternatives and other parameters, see configuration subdir
my_params = dict(
    dynamic_vtree_convergence_threshold = 2.0,
    rr_cartesian_product_limit=2048,
    sw_cartesian_product_limit=4096,
    lr_time_limit=12500000,
    rr_time_limit=12500000,
    sw_time_limit=50000000,
    lr_size_limit=1.1,
    rr_size_limit=1.3,
    sw_size_limit=1.4,
    branching='lexicographical',
    branching_value=0,
)

# Compile SDD
sdd = SDDBuilder(
    problogfile='../benchmarks/high-voltage/initial-experiments/europe/hr_gcc_0_with_all_queries.pl',
    dyn_minimize=False,
    minimize=True,
    args=my_params)

sdd_formula = sdd.formula()
queries = sdd_formula.labeled()

cb = sdd_cp(sdd_formula)
cb.set_objective_sumprob(range(len(queries)),
                         MAXIMIZE)   # specify the number of queries in the set of interest
cb.add_constraint_theory(ub=int(k))  # specify the upper bound on the cardinality

# set gecode parameters
cb.set_var_branching_heuristic(my_params['branching'])
cb.set_val_branching_heuristic(my_params['branching_value'])

print('Solving..')
sys.stdout.flush()
cb.solve()
print(cb.obj_val)
sys.stdout.flush()