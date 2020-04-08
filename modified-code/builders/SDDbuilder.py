"""
SDDbuilder
----------------------------------------------

A class for compiling SDDs using the SMT-preserving compilation algorithm
and configuring it.

@author: Anna Latour
@email:  a.l.d.latour@liacs.leidenuniv.nl
@date:   2020
@edited: 2020

Relevant papers:
    Stochastic Constraint Propagation for Mining Probabilistic Networks.
    A.L.D. Latour, B. Babaki, Daniël Fokkinga, Marie Anastacio,
    Holger Hoos, and S. Nijssen. Submitted to the Artificial
    Intelligence Journal in April 2020.

Licensed under MIT (https://github.com/latower/SCPMD-solving/blob/master/LICENSES/LICENSE).
"""

import sys
from problog.program import PrologFile
from problog.formula import LogicDAG
from problog import get_evaluatable
from datetime import datetime

class SDDBuilder(object):
	def __init__(self, problogfile=None,
				 dyn_minimize=False,
				 minimize=False,
				 args=None
				 ):
		assert not (problogfile is None), "Provide a ProbLog file"
		print("args:", args)
		print(args['dynamic_vtree_convergence_threshold'])
		parameters = dict(
			convergence_threshold = args['dynamic_vtree_convergence_threshold'],
			rr_cartesian_product_limit=args['rr_cartesian_product_limit'],
			sw_cartesian_product_limit=args['sw_cartesian_product_limit'],
			lr_time_limit=args['lr_time_limit'],
			rr_time_limit=args['rr_time_limit'],
			sw_time_limit=args['sw_time_limit'],
			lr_size_limit=args['lr_size_limit'],
			rr_size_limit=args['rr_size_limit'],
			sw_size_limit=args['sw_size_limit']
		)
		
		# Parse program and ground it:
		print(datetime.now().strftime('%Y-%m-%d, %Hh%Mm%Ss: Parse ProbLog program in ' + problogfile))
		sys.stdout.flush()
		program = PrologFile(problogfile)
		print(datetime.now().strftime('%Y-%m-%d, %Hh%Mm%Ss: Ground the program'))
		sys.stdout.flush()
		dag = LogicDAG.create_from(program)
			
		# Create SDD out of the DAG
		if dyn_minimize == 1:
			print(datetime.now().strftime('%Y-%m-%d, %Hh%Mm%Ss: Create SDD with dyn_minimize=True'))
			sys.stdout.flush()
			self.sdd = get_evaluatable('sdd').create_from(dag, sdd_auto_gc=True, mip_minimize=True, **parameters)
		else:
			print(datetime.now().strftime('%Y-%m-%d, %Hh%Mm%Ss: Create SDD with dyn_minimize=False'))
			sys.stdout.flush()
			self.sdd = get_evaluatable('sdd').create_from(dag, sdd_auto_gc=False, mip_minimize=True, **parameters)
		
		print("SDD size:", self.sdd.sdd_size())
		sys.stdout.flush()
		
		if minimize == 1:
			print(datetime.now().strftime('%Y-%m-%d, %Hh%Mm%Ss: Minimizing SDD..'))
			sys.stdout.flush()
			self.sdd.manual_minimize()
			print("(new) SDD size:", self.sdd.sdd_size())
			sys.stdout.flush()

		print(datetime.now().strftime('%Y-%m-%d, %Hh%Mm%Ss: Finished SDD compilation'))
		sys.stdout.flush()
		
	def formula(self):
		return self.sdd.to_formula()