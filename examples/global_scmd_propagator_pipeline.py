# !/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Apr 7, 2020

author:         Anna Latour
e-mail:         a.l.d.latour@liacs.leidenuniv.nl
created:        Tue Apr 7, 2020
edited:         Wed Apr 8, 2020

description:    This is a minimal working example of how to run the global
                SCMD propagator pipeline for solving SCPMDs

Relevant paper: [Latour et al., 2020] (submitted)
                A.L.D. Latour, B. Babaki, D.Fokkinga, M. Anastacio, H. Hoos,
                S. Nijssen. Stochastic Constraint Propagation for Mining
                Probabilistic Networks, submitted to Artificial Intelligence
                Journal in April 2020.

usage:          python global_scmd_propagator_pipeline.py

Licensed under MIT (https://github.com/latower/SCPMD-solving/blob/master/LICENSES/LICENSE).
"""

import os
import subprocess
import sys

sys.path.insert(0, '../modified-code/builders')
from BDDbuilder import BDDBuilder

sys.path.insert(0, os.environ.get('PROBLOG_HOME') + '/problog')
from problog.program import PrologFile
from problog.formula import LogicDAG

BIN_DIR = os.environ.get('PROPAGATOR_BIN_DIR')
k = 10  # constraint on cardinality of the solution

# Ground the program and compile OBDD
program = PrologFile('../benchmarks/high-voltage/initial-experiments/europe/hr_gcc_0_with_all_queries.pl')
dag = LogicDAG.create_from(program)
obdd = BDDBuilder(dag=dag, dynamic_minimization=True)

# Write OBDD to file
bdd_file_name = 'hr_gcc_with_all_queries.txt'
obdd.write_to_file(bdd_file_name)

# Specify parameters for propagator
# For alternatives and other parameters, see configuration subdir
runner = 'runner-max-exp-full'  # alternative: runner-max-exp-partial
branching = 'derivative-one'

# Call OscaR
cmd = [BIN_DIR + '/' + runner,
       '--bdd-file', bdd_file_name,
       '--max-card', str(k),
       '--branching', branching]
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