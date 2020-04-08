"""
run_oscar
----------------------------------------------
Script to parse parameters of the full pipeline, compile the OBDD
and solve the problem (using the OscaR implementation)
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

def check_arg(args=None):
	parser = argparse.ArgumentParser(description='Script to run pipeline')
	parser.add_argument('--name', help='Name of problog file', required='True')
	
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
	
	parser.add_argument('--branching', help='Selection heuristic', default='derivative')
	parser.add_argument('--branch_value', help='Branching value', default='1', type=int)
	parser.add_argument('--max_iterations', help='Maximum no. of iterations performed to calculate the influence heuristic', default=10, type=int)
	parser.add_argument('--node_samples', help='Maximum no. of node samples used to calculate betweenness centrality', default=10, type=int)
	parser.add_argument('--prop_version', help='Version of the propagation algorithm (linear/sub-linear)', default='sub-lin')
	parser.add_argument('--fire_prob', help='Probability of neighbour burning during forest fire', default=0.5, type=float)
	parser.add_argument('--burnt_edges', help='Fraction of edges that need to be burnt', default=0.5, type=float)
	
	return parser.parse_args(args)

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

preprocess_heuristics = ['degree', 'influence', 'betweenness', 'local-sim', 'quadrangle', 'triangle', 'forest-fire', 'random']
print('Selection heuristic =', args.branching)
if args.branching not in ['binary-last-conflict', 'conflict-ordering-search']:
	print('Value heuristic =', args.branch_value)

if(args.branching in preprocess_heuristics):	
	print('Calculating heuristic..')
	#the following code works specifically for the filenames used in our experiments
	#e.g., the path to graph files is currently hardcoded
	if("cc" in os.path.basename(args.name)): #powergrid data, edge based
		graph_file = "/home/fokkinga/aij2020/data/powergrid/all/graphs/all/" + os.path.basename(args.name)[:-8] + "_lines.csv"
		heuristic_file = temp_dir + '/' + os.path.basename(args.name)[:-3] + '_' + random_id + '_heuristics.txt'
		if(args.branching in ['degree', 'local-sim', 'quadrangle', 'triangle', 'forest-fire']):
			if args.branching == 'forest-fire':
				print('Probability of neighbour burning during forest fire =', args.fire_prob)
				print('Fraction of edges that need to be burnt =', args.burnt_edges)
			builder.heuristic_spars_edge(graph_file, heuristic_file, args.branching, args.fire_prob, args.burnt_edges)
		elif(args.branching == 'influence'):
			print('Maximum no. of iterations for influence =', args.max_iterations)
			builder.heuristic_influence_edge(graph_file, heuristic_file, args.max_iterations)	
		elif(args.branching == 'betweenness'):
			print('No. of node samples for betweenness centrality =', args.node_samples)
			builder.heuristic_bet_centrality_edge(graph_file, heuristic_file, args.node_samples)	
		elif(args.branching == 'random'):
			builder.random_heuristic_edge(heuristic_file)
	
	elif("facebook" in args.name):	
		folder = os.path.dirname(os.path.dirname(os.path.dirname(args.name))) #unelegant way of getting the path to facebook folder
		graph_file = folder + '/graphs/' + (os.path.basename(args.name))[:-3] + '.txt'
		heuristic_file = temp_dir + '/' + os.path.basename(args.name)[:-3] + '_' + random_id + '_heuristics.txt'

		if(args.branching == 'degree'):
			builder.heuristic_degree(graph_file, heuristic_file)
		elif(args.branching == 'influence'):
			print('Maximum no. of iterations for influence =', args.max_iterations)
			builder.heuristic_influence(graph_file, heuristic_file, args.max_iterations)	
		elif(args.branching == 'betweenness'):
			print('No. of node samples for betweenness centrality =', args.node_samples)
			builder.heuristic_bet_centrality(graph_file, heuristic_file, args.node_samples)	
		elif(args.branching in ['local-sim', 'quadrangle', 'triangle', 'forest-fire']):
			if args.branching == 'forest-fire':
				print('Probability of neighbour burning during forest fire =', args.fire_prob)
				print('Fraction of edges that need to be burnt =', args.burnt_edges)
			builder.heuristic_spars(graph_file, heuristic_file, args.branching, args.fire_prob, args.burnt_edges)
		elif(args.branching == 'random'):
			builder.random_heuristic(heuristic_file)
	else:
		print("Something is wrong, check filenaming..")
		os._exit()

	print('Version of propagation algorithm =', args.prop_version)
	print('Solving..')
	sys.stdout.flush()
	if args.branching not in ['binary-last-conflict', 'conflict-ordering-search']:
		if(args.branch_value == 0):
			args.branching = args.branching + "-zero"
		else:
			args.branching = args.branching + "-one"	
	
	if(args.prop_version == 'lin'):
		subprocess.check_call('/home/fokkinga/aij2020/oscar/target/pack/bin/runner-max-exp-full --bdd-file ' + bdd_file_name + ' --max-card ' + max_card + ' --branching ' + args.branching + ' --heuristic-file '+ heuristic_file, shell=True)
	else:
		subprocess.check_call('/home/fokkinga/aij2020/oscar/target/pack/bin/runner-max-exp-partial --bdd-file ' + bdd_file_name + ' --max-card ' + max_card + ' --branching ' + args.branching + ' --heuristic-file '+ heuristic_file, shell=True)
	subprocess.check_call('rm ' + heuristic_file, shell=True) #remove file with heuristics
	
else:
	print('Version of propagation algorithm =', args.prop_version)
	print('Solving..')
	sys.stdout.flush()	
	if args.branching not in ['binary-last-conflict', 'conflict-ordering-search']:
		if(args.branch_value == 0):
			args.branching = args.branching + "-zero"
		else:
			args.branching = args.branching + "-one"
					
	if(args.prop_version == 'lin'):
		subprocess.check_call('/home/fokkinga/aij2020/oscar/target/pack/bin/runner-max-exp-full --bdd-file ' + bdd_file_name + ' --max-card ' + max_card + ' --branching ' + args.branching, shell=True)
	else:
		subprocess.check_call('/home/fokkinga/aij2020/oscar/target/pack/bin/runner-max-exp-partial --bdd-file ' + bdd_file_name + ' --max-card ' + max_card + ' --branching ' + args.branching, shell=True)

#remove the additional files (clean problog program and bdd file) that were created
subprocess.check_call('rm ' + temp_file_name, shell=True)
subprocess.check_call('rm ' + bdd_file_name, shell=True)

print("RUN SUCCESFULLY COMPLETED")
