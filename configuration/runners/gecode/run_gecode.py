"""
run_gecode
----------------------------------------------
Script to parse parameters of the full pipeline, compile the OBDD
and solve the problem (using the Gecode implementation)
as defined in the ProbLog file for a cardinality constraint defined on the first line of this file.

author: Daniël Fokkinga
date: 2019, last edited 2020

Relevant paper: [Latour et al., 2020] (submitted)
                A.L.D. Latour, B. Babaki, D.Fokkinga, M. Anastacio, H. Hoos,
                S. Nijssen. Stochastic Constraint Propagation for Mining
                Probabilistic Networks, submitted to Artificial Intelligence
                Journal in April 2020.

Licensed under MIT (https://github.com/latower/SCPMD-solving/blob/master/LICENSES/LICENSE).
"""

import os
import subprocess
import argparse
import sys
import shutil
from BDDbuilder import BDDBuilder
import random
import string
from problog.program import PrologFile
from problog.sdd_formula import SDD	 
from SDDbuilder import SDDBuilder 
from problog.program import PrologFile
from problog.sdd_formula import SDD
sys.path.append(os.path.abspath('/home/fokkinga/aij2020/gecode_runners/decomposed-sdd/swig'))
from sdd2cp import MAXIMIZE, MINIMIZE, sdd_cp

def check_arg(args=None):
	parser = argparse.ArgumentParser(description='Script to run pipeline')
	parser.add_argument('--name', help='Name of problog file', required='True')
	parser.add_argument('--GAC', help='Use domain consistent decomposition or not (0/1)', default=1, type=int)
	parser.add_argument('--struct', help='Use BDDs or SDDs for compilation', default='bdd')
	
	#OBDD compilation parameters
	parser.add_argument('--minimize', help='Minize OBDD 0/1', default=0, type=int)		
	parser.add_argument('--dyn_minimize', help='Dynamic minimization 0/1', default=0, type=int)	
	parser.add_argument('--reordering', help='Variable order algorithm', default='group-sift')
	parser.add_argument('--symmetric', help='Enable symmetric sifting (0/1)', default=0, type=int)
	parser.add_argument('--converging', help='Enable converging variable ordering', default=0, type=int)
	parser.add_argument('--window_size', help='Window size for permutation approach', default=2, type=int)
	parser.add_argument('--max_swaps', help='Maximum amount of swaps to be performed while ordering', default=2000000, type=int)
	parser.add_argument('--max_vars', help='Maximum amount of variables allowed to be sifted', default=1000, type=int)
	parser.add_argument('--max_growth', help='Maximum growth of OBDD while sifting', default=1.2, type=float)
	
	parser.add_argument('--dyn_reordering', help='Variable order algorithm for dynamic reordering', default='group-sift')
	parser.add_argument('--dyn_symmetric', help='Enable symmetric sifting (0/1) for dynamic reordering', default=0, type=int)
	parser.add_argument('--dyn_converging', help='Enable converging variable ordering for dynamic reordering', default=0, type=int)
	parser.add_argument('--dyn_window_size', help='Window size for permutation approach for dynamic reordering', default=2, type=int)
	parser.add_argument('--dyn_max_swaps', help='Maximum amount of swaps to be performed while ordering for dynamic reordering', default=2000000, type=int)
	parser.add_argument('--dyn_max_vars', help='Maximum amount of variables allowed to be sifted for dynamic reordering', default=1000, type=int)
	parser.add_argument('--dyn_max_growth', help='Maximum growth of OBDD while sifting for dynamic reordering', default=1.2, type=float)
	
	#SDD compilation parameters
	parser.add_argument('--sdd_minimize', help='Single minimization of SDD 0/1', default=0, type=int)		
	parser.add_argument('--sdd_dyn_minimize', help='Dynamic minimization for SDDs 0/1', default=0, type=int)
	parser.add_argument('--dynamic_vtree_convergence_threshold', default=1, type=float)
	parser.add_argument('--rr_cartesian_product_limit_on', default=1, type=int)
	parser.add_argument('--rr_cartesian_product_limit', default=0, type=int)
	parser.add_argument('--sw_cartesian_product_limit_on', default=1, type=int)
	parser.add_argument('--sw_cartesian_product_limit', default=0, type=int)
	parser.add_argument('--time_limit_lr_on', default=1, type=int)
	parser.add_argument('--time_limit_lr', default=0, type=int)
	parser.add_argument('--time_limit_rr_on', default=1, type=int)
	parser.add_argument('--time_limit_rr', default=0, type=int)
	parser.add_argument('--time_limit_sw_on', default=1, type=int)
	parser.add_argument('--time_limit_sw', default=0, type=int)
	parser.add_argument('--size_limit_lr_on', default=1, type=int)
	parser.add_argument('--size_limit_lr', default=0, type=float)
	parser.add_argument('--size_limit_rr_on', default=1, type=int)
	parser.add_argument('--size_limit_rr', default=0, type=float)
	parser.add_argument('--size_limit_sw_on', default=1, type=int)
	parser.add_argument('--size_limit_sw', default=0, type=float)
	
	#Gecode parameters
	parser.add_argument('--c_d', type=int, default=8)
	parser.add_argument('--a_d', type=int, default=2)
	parser.add_argument('--threads', type=int, default=1)
	
	parser.add_argument('--branching_value', type=int, default=0)
	parser.add_argument('--branching', default='lexicographical')
	parser.add_argument('--decay', type=float, default=0.0)
	
	parser.add_argument('--ipl_hybrid', type=int, default=0)
	parser.add_argument('--ipl', default='def')
	
	return parser.parse_args(args)

def commandline_string(args):
	string = '-c-d ' + str(args.c_d) +  ' -a-d ' + str(args.a_d) + ' -threads ' + str(args.a_d) + ' -branching-value ' + str(args.branching_value) + ' -branching ' + str(args.branching) + ' -decay ' + str(args.decay)
	if args.ipl_hybrid == 1:
		string += ' -ipl basic,advanced'
	else:
		string += ' -ipl ' + str(args.ipl)
	return string

def variable_order(reordering, symmetric, converging, window):
	if(symmetric == 1 and converging == 1):
		print('Variable order algorithm: CUDD_REORDER_SYMM_SIFT_CONV') 
		return 7
	elif(symmetric == 1):
		print('Variable order algorithm: CUDD_REORDER_SYMM_SIFT')
		return 6
	elif (converging == 1):
		if(reordering == 'sift'):
			print('Variable order algorithm: CUDD_REORDER_SIFT_CONVERGE')
			return 5
		elif(reordering == 'group-sift'):
			print('Variable order algorithm: CUDD_REORDER_GROUP_SIFT_CONV')
			return 15
		elif(reordering == 'window'):
			if(window == 2):
				print('Variable order algorithm: CUDD_REORDER_WINDOW2_CONV')
				return 11
			elif(window == 3):
				print('Variable order algorithm: CUDD_REORDER_WINDOW3_CONV')
				return 12
			elif(window == 4):
				print('Variable order algorithm: CUDD_REORDER_WINDOW4_CONV')	
				return 13
	else:
		if(reordering == 'sift'):
			print('Variable order algorithm: CUDD_REORDER_SIFT')
			return 4
		elif(reordering == 'group-sift'):
			print('Variable order algorithm: CUDD_REORDER_GROUP_SIFT')
			return 14
		elif(reordering == 'window'):
			if(window == 2):
				print('Variable order algorithm: CUDD_REORDER_WINDOW2')
				return 8
			elif(window == 3):
				print('Variable order algorithm: CUDD_REORDER_WINDOW3')
				return 9
			elif(window == 4):
				print('Variable order algorithm: CUDD_REORDER_WINDOW4')	
				return 10
		elif(reordering == 'genetic'):
			print('Variable order algorithm: CUDD_REORDER_GENETIC')
			return 17
		elif(reordering == 'annealing'):
			print('Variable order algorithm: CUDD_REORDER_ANNEALING')
			return 18
		elif(reordering == 'random'):
			print('Variable order algorithm: CUDD_REORDER_RANDOM')
			return 2
			
args = check_arg(sys.argv[1:])
reorder_type = 14 #default
dyn_reorder_type = 14

print('Name of problogfile =', args.name)

temp_dir = '/scratch/fokkinga'
if not os.path.exists(temp_dir):
	os.mkdir(temp_dir)
	
#parse problog file and read constraint, create temp file without this information			
random_id = ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(4)) #use random string such that 2 runs do not use same file name
temp_file_name = temp_dir + '/' + os.path.basename(args.name)[:-3] + '_' + random_id + '.pl' 
f = open(args.name, 'r')
if("citation" in args.name): #read min supp and min exp and create clean program
	min_supp = f.readline().strip('\n')
	min_exp = f.readline().strip('\n')
else: #read max_cardinality and create clean program
	max_card = f.readline().strip('\n')
problog_program = open(temp_file_name, 'w')
shutil.copyfileobj(f, problog_program)
f.close()
problog_program.close()

if args.struct == 'bdd':
	print('Dynamic minization (0/1) =', args.name)
	if args.dyn_minimize == 1:
		print('With the following algorithm..')
		dyn_reorder_type = variable_order(args.dyn_reordering, args.dyn_symmetric, args.dyn_converging, args.dyn_window_size)
		print('dyn_max_vars =', args.dyn_max_vars)
		print('dyn_max_swaps  =', args.dyn_max_swaps)
		print('dyn_max_growth =', args.dyn_max_growth)
				
	print('Compiling OBDD..')
	builder = BDDBuilder(problogfile=temp_file_name, dynamic_minimization=args.dyn_minimize, reorder_type=dyn_reorder_type, max_swaps = args.dyn_max_swaps, max_growth=args.dyn_max_growth, max_vars=args.dyn_max_vars)

	print('Minimizing (0/1) =', args.minimize) 
	if args.minimize == 1:
		print('With the following algorithm..')
		reorder_type = variable_order(args.reordering, args.symmetric, args.converging, args.window_size)
		print('Max_vars =', args.max_vars)
		print('Max_swaps =', args.max_swaps)
		print('Max_growth =', args.max_growth)
		print('Minimizing OBDD..')
		sys.stdout.flush()
		builder.minimize(reorder_type, args.max_vars, args.max_swaps, args.max_growth)	

	bdd_file_name = temp_dir + '/' + os.path.basename(args.name)[:-3] + '_' + random_id + '_bdd.txt'
	builder.write_to_file(bdd_file_name)
		

	'''
	if("citation" in name): #create transaction database for FIM setting
		db_file_name = os.path.dirname(os.path.dirname(name)) + '/databases/' + os.path.basename(name)[:9] + '.txt'
		new_db_file = temp_dir + '/' + os.path.basename(name)[:9] + '_' + random_id + '_db.txt'
		builder.convert_transactions(db_file_name, new_db_file)		
	'''

	print('Domain consistent decomposition: (0/1)', args.GAC)
	print('Solving..')
	sys.stdout.flush()

	if(args.GAC == 0):
		subprocess.check_call('/home/fokkinga/aij2020/gecode_runners/decomposed-configurable/bin/decomposed ' + commandline_string(args) + ' -optimization maxprob -threshold ' + max_card + ' ' +  bdd_file_name, shell=True)
	else:
		subprocess.check_call('/home/fokkinga/aij2020/gecode_runners/domain_consistent_decomposed-configurable/bin/decomposed ' + commandline_string(args) + ' -optimization maxprob -threshold ' + max_card + ' ' +  bdd_file_name, shell=True)
		
	#remove the additional files that were created
	subprocess.check_call('rm ' + bdd_file_name, shell=True)
	
elif args.struct == 'sdd':
	print('Compiling SDD..')
	sys.stdout.flush()
	builder = SDDBuilder(problogfile=temp_file_name, minimize=args.sdd_minimize, dyn_minimize=args.sdd_dyn_minimize, args=args)
	formula = builder.formula()
	cb = sdd_cp(formula)
	cb.set_objective_sumprob(range(len(formula.labeled())), MAXIMIZE) # specify the number of queries in the set of interest
	cb.add_constraint_theory(ub = int(max_card)) #specify the upper bound on the cardinality

	#set gecode parameters
	cb.set_var_branching_heuristic(args.branching)
	cb.set_val_branching_heuristic(args.branching_value)
	cb.set_decay(args.decay)
	cb.set_c_d(args.c_d)
	cb.set_a_d(args.a_d)
	cb.set_threads(args.threads)
	if args.ipl_hybrid == 1:
		cb.set_ipl('basic,advanced')
	else:
		cb.set_ipl(args.ipl)
		
	print('Solving..')
	sys.stdout.flush()
	cb.solve()
	print(cb.obj_val)
	sys.stdout.flush()
else:
	print('Struct parameter does not have a valid value')
	
#remove the additional files that were created	
subprocess.check_call('rm ' + temp_file_name, shell=True)

print("RUN SUCCESFULLY COMPLETED")
sys.stdout.flush()
