# !/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Apr 7, 2020

author:         Anna Latour
e-mail:         a.l.d.latour@liacs.leidenuniv.nl
created:        Tue Apr 7, 2020
edited:         Wed Apr 8, 2020

description:    This is a minimal working example of how to run the MIP
                decomposition pipeline for solving SCPMDs

Relevant paper: [Latour et al., 2020] (submitted)
                A.L.D. Latour, B. Babaki, D.Fokkinga, M. Anastacio, H. Hoos,
                S. Nijssen. Stochastic Constraint Propagation for Mining
                Probabilistic Networks, submitted to Artificial Intelligence
                Journal in April 2020.

usage:          python mip_decomposition_pipeline.py

Licensed under MIT (https://github.com/latower/SCPMD-solving/blob/master/LICENSES/LICENSE).
"""

import argparse
import os
import subprocess
import sys

sys.path.insert(0, '../modified-code/builders')
# ProbLog 2 OBDD 2 MIP builders
from BDDbuilder import BDDBuilder
from bdd_reader import read_bdd
from maxprob_mip import MipBuilder
# ProbLog 2 SDD 2 MIP builders
from SDDbuilder import SDDBuilder
from mipify_sdd	import sdd2mip_builder

sys.path.insert(0, os.environ.get('PROBLOG_HOME') + '/problog')
from problog.program import PrologFile
from problog.formula import LogicDAG

k = 10  # constraint on cardinality of the solution

print("OBDD-to-MIP")

# Ground the program
program = PrologFile('../benchmarks/high-voltage/initial-experiments/europe/hr_gcc_0_with_all_queries.pl')
dag = LogicDAG.create_from(program)

# Compile OBDD
bdd_file_name = 'hr_gcc_with_all_queries.txt'
builder = BDDBuilder(dag=dag, dynamic_minimization=True)
builder.write_to_file(bdd_file_name)
obdd = read_bdd(bdd_file_name)

# Turn OBDD into MIP
model = MipBuilder(obdd, int(k), 1)

# Specify parameters for solver
# For alternatives and other parameters, see configuration subdir
model.model.Params.Threads = 3

# Solve model
model.solve()
print('Solution:')
print(model.obj_val)
print(model.solution)

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
    sw_size_limit=1.4
)

# Compile SDD
sdd = SDDBuilder(
    problogfile='../benchmarks/high-voltage/initial-experiments/europe/hr_gcc_0_with_all_queries.pl',
    dyn_minimize=False,
    minimize=True,
    args=my_params)

sdd_formula = sdd.formula()
queries = sdd_formula.labeled()

# Turn SDD into MIP
model = sdd2mip_builder(sdd_formula,
                        optqueries=queries,
                        opttype='maxSumProb',
                        csttype='ubTheory',
                        threshold=int(k))

# Solve model
model.solve()
print('Solution:')
print(model.obj_val)
print(model.solution)