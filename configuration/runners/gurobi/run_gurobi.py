"""
run_gurobi
----------------------------------------------
Script to parse parameters of the full pipeline, compile the OBDD (or SDD..)
and solve the problem (using Gurobi)
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
from SDDbuilder import SDDBuilder
import random
import socket
import string	
from bdd_reader import read_bdd
from maxprob_mip import MipBuilder	
from mipify_sdd	import sdd2mip_builder 

def check_arg(args=None):
	parser = argparse.ArgumentParser(description='Script to run pipeline')
	parser.add_argument('--name', help='Name of problog file', required='True')
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
	
	# parameters for Gurobi..
	parser.add_argument('--auto_threads_on', default=1, type=int)
	parser.add_argument('--threads', default=0, type=int)
	
	parser.add_argument('--auto_issmethod_on', default=1, type=int)
	parser.add_argument('--issmethod', default=0, type=int)
	
	parser.add_argument('--auto_presolve_on', default=1, type=int)
	parser.add_argument('--presolve', default=-1, type=int)
	
	parser.add_argument('--auto_aggfill_on', default=1, type=int)
	parser.add_argument('--aggfill', default=-1, type=int)
	
	parser.add_argument('--aggregate', default=1, type=int)
	parser.add_argument('--dualreductions', default=1, type=int)
	parser.add_argument('--precrush', default=0, type=int)
	parser.add_argument('--predeprow', default=1, type=int)
	
	parser.add_argument('--auto_predual_on', default=1, type=int)
	parser.add_argument('--predual', default=-1, type=int)
	
	parser.add_argument('--auto_prepasses_on', default=1, type=int)
	parser.add_argument('--prepasses', default=-1, type=int)
	
	parser.add_argument('--auto_presparsify_on', default=1, type=int)
	parser.add_argument('--presparsify', default=-1, type=int)
	
	parser.add_argument('--crossoverbasis', default=0, type=int)
	
	parser.add_argument('--auto_barcorrectors', default=1, type=int)
	parser.add_argument('--barcorrectors', default=-1, type=int)
	
	parser.add_argument('--auto_barhomogeneous', default=1, type=int)
	parser.add_argument('--barhomogeneous', default=-1, type=int)
	
	parser.add_argument('--auto_barorder', default=1, type=int)
	parser.add_argument('--barorder', default=-1, type=int)
	
	parser.add_argument('--auto_crossover', default=1, type=int)
	parser.add_argument('--crossover', default=-1, type=int)
	
	parser.add_argument('--infunbdinfo', default=0, type=int)
	parser.add_argument('--perturbvalue', default=0.0002, type=float)
	
	parser.add_argument('--auto_normadjust_on', default=1, type=int)
	parser.add_argument('--normadjust', default=-1, type=int)
	
	parser.add_argument('--auto_quad_on', default=1, type=int)
	parser.add_argument('--quad', default=-1, type=int)
	
	parser.add_argument('--auto_sifting_on', default=1, type=int)
	parser.add_argument('--sifting', default=-1, type=int)
	
	parser.add_argument('--auto_siftmethod_on', default=1, type=int)
	parser.add_argument('--siftmethod', default=-1, type=int)
	
	parser.add_argument('--auto_simplexpricing_on', default=1, type=int)
	parser.add_argument('--simplexpricing', default=-1, type=int)
	
	parser.add_argument('--heuristics', default=0.05, type=float)
	parser.add_argument('--improvestartgap', default=0.0, type=float)
	parser.add_argument('--improvestartnodes', default=0.0, type=float)
	parser.add_argument('--improvestarttime', default=0.0, type=float)
	parser.add_argument('--mipfocus', default=0, type=int)
	parser.add_argument('--submipnodes', default=500, type=int)
	parser.add_argument('--partitionplace', default=15, type=int)
	
	parser.add_argument('--auto_branchdir_on', default=1, type=int)
	parser.add_argument('--branchdir', default=0, type=int)
	
	parser.add_argument('--auto_degenmoves_on', default=1, type=int)
	parser.add_argument('--degenmoves', default=-1, type=int)
	
	parser.add_argument('--auto_disconnected_on', default=1, type=int)
	parser.add_argument('--disconnected', default=-1, type=int)
	
	parser.add_argument('--auto_minrelnodes_on', default=1, type=int)
	parser.add_argument('--minrelnodes', default=-1, type=int)
	
	parser.add_argument('--auto_nodemethod_on', default=1, type=int)
	parser.add_argument('--nodemethod', default=-1, type=int)
	
	parser.add_argument('--auto_pumppasses_on', default=1, type=int)
	parser.add_argument('--pumppasses', default=-1, type=int)
	
	parser.add_argument('--auto_rins_on', default=1, type=int)
	parser.add_argument('--rins', default=-1, type=int)
	
	
	parser.add_argument('--shut_off_mip_start_processing', default=0, type=int) 
	parser.add_argument('--auto_startnodelimit', default=1, type=int)
	parser.add_argument('--startnodelimit', default=-2, type=int) #default can be -1 (will be set later)
	
	parser.add_argument('--auto_symmetry_on', default=1, type=int)
	parser.add_argument('--symmetry', default=-1, type=int)
	
	parser.add_argument('--auto_varbranch_on', default=1, type=int)
	parser.add_argument('--varbranch', default=-1, type=int)
	
	parser.add_argument('--auto_zeroobjnodes_on', default=1, type=int)
	parser.add_argument('--zeroobjnodes', default=-1, type=int)
	
	parser.add_argument('--auto_cuts_on', default=1, type=int)
	parser.add_argument('--cuts', default=-1, type=int)
	
	parser.add_argument('--auto_bqpcuts_on', default=1, type=int)
	parser.add_argument('--bqpcuts', default=-1, type=int)
	
	parser.add_argument('--auto_cliquecuts_on', default=1, type=int)
	parser.add_argument('--cliquecuts', default=-1, type=int)
	
	parser.add_argument('--auto_covercuts_on', default=1, type=int)
	parser.add_argument('--covercuts', default=-1, type=int)
	
	parser.add_argument('--auto_cutaggpasses_on', default=1, type=int)
	parser.add_argument('--cutaggpasses', default=-1, type=int)
	
	parser.add_argument('--auto_cutpasses_on', default=1, type=int)
	parser.add_argument('--cutpasses', default=-1, type=int)
	
	parser.add_argument('--auto_flowcovercuts_on', default=1, type=int)
	parser.add_argument('--flowcovercuts', default=-1, type=int)
	
	parser.add_argument('--auto_flowpathcuts_on', default=1, type=int)
	parser.add_argument('--flowpathcuts', default=-1, type=int)
	
	parser.add_argument('--auto_gomorypasses_on', default=1, type=int)
	parser.add_argument('--gomorypasses', default=-1, type=int)
	
	parser.add_argument('--auto_gubcovercuts_on', default=1, type=int)
	parser.add_argument('--gubcovercuts', default=-1, type=int)
	
	parser.add_argument('--auto_impliedcuts_on', default=1, type=int)
	parser.add_argument('--impliedcuts', default=-1, type=int)
	
	parser.add_argument('--auto_infproofcuts_on', default=1, type=int)
	parser.add_argument('--infproofcuts', default=-1, type=int)
	
	parser.add_argument('--auto_mipsepcuts_on', default=1, type=int)
	parser.add_argument('--mipsepcuts', default=-1, type=int)
	
	parser.add_argument('--auto_mircuts_on', default=1, type=int)
	parser.add_argument('--mircuts', default=-1, type=int)
	
	parser.add_argument('--auto_modkcuts_on', default=1, type=int)
	parser.add_argument('--modkcuts', default=-1, type=int)
	
	parser.add_argument('--auto_networkcuts_on', default=1, type=int)
	parser.add_argument('--networkcuts', default=-1, type=int)
	
	parser.add_argument('--auto_projimpliedcuts_on', default=1, type=int)
	parser.add_argument('--projimpliedcuts', default=-1, type=int)
	
	parser.add_argument('--auto_relaxliftcuts_on', default=1, type=int)
	parser.add_argument('--relaxliftcuts', default=-1, type=int)
	
	parser.add_argument('--auto_rltcuts_on', default=1, type=int)
	parser.add_argument('--rltcuts', default=-1, type=int)
	
	parser.add_argument('--auto_strongcgcuts_on', default=1, type=int)
	parser.add_argument('--strongcgcuts', default=-1, type=int)
	
	parser.add_argument('--auto_submipcuts_on', default=1, type=int)
	parser.add_argument('--submipcuts', default=-1, type=int)
	
	parser.add_argument('--auto_zerohalfcuts_on', default=1, type=int)
	parser.add_argument('--zerohalfcuts', default=-1, type=int)
	
	return parser.parse_args(args)

def set_parameters(model, args):
	#setting Gurobi parameters..........
	model.Params.Threads = args.threads
	model.Params.IISMethod = args.issmethod
	model.Params.Presolve = args.presolve
	model.Params.AggFill = args.aggfill
	model.Params.Aggregate = args.aggregate
	model.Params.DualReductions = args.dualreductions
	model.Params.PreCrush = args.precrush
	model.Params.PreDeProw = args.predeprow
	model.Params.PreDual = args.predual
	model.Params.PrePasses = args.prepasses
	model.Params.PreSparsify = args.presparsify
	model.Params.CrossoverBasis = args.crossoverbasis
	model.Params.BarCorrectors = args.barcorrectors
	model.Params.BarHomogeneous = args.barhomogeneous
	model.Params.BarOrder = args.barorder
	model.Params.Crossover = args.crossover
	model.Params.InfUnbdInfo = args.infunbdinfo
	model.Params.PerturbValue = args.perturbvalue
	model.Params.NormAdjust = args.normadjust
	model.Params.Quad = args.quad
	model.Params.Sifting = args.sifting
	model.Params.SiftMethod = args.siftmethod
	model.Params.SimplexPricing = args.simplexpricing
	model.Params.Heuristics = args.heuristics
	model.Params.ImproveStartGap = args.improvestartgap
	model.Params.ImproveStartNodes = args.improvestartnodes
	model.Params.ImproveStartTime = args.improvestarttime
	model.Params.MIPFocus = args.mipfocus
	model.Params.SubMIPNodes = args.submipnodes
	model.Params.PartitionPlace = args.partitionplace
	model.Params.BranchDir = args.branchdir
	model.Params.DegenMoves = args.degenmoves
	model.Params.Disconnected = args.disconnected
	model.Params.MinRelNodes = args.minrelnodes
	model.Params.NodeMethod = args.nodemethod
	model.Params.PumpPasses = args.pumppasses
	model.Params.RINS = args.rins
	if args.shut_off_mip_start_processing == 1 and args.auto_startnodelimit == 0:
		startnodelimit = -2
		model.Params.StartNodeLimit = startnodelimit
	elif args.shut_off_mip_start_processing == 0 and args.auto_startnodelimit == 1:
		startnodelimit = -1
		model.Params.StartNodeLimit = startnodelimit
	else:
		model.Params.StartNodeLimit = args.startnodelimit
	model.Params.Symmetry = args.symmetry
	model.Params.VarBranch = args.varbranch
	model.Params.ZeroObjNodes = args.zeroobjnodes
	model.Params.Cuts = args.cuts
	model.Params.BQPCuts = args.bqpcuts
	model.Params.CliqueCuts = args.cliquecuts
	model.Params.CoverCuts = args.covercuts
	model.Params.CutAggPasses = args.cutaggpasses
	model.Params.FlowCoverCuts = args.flowcovercuts
	model.Params.FlowPathCuts = args.flowpathcuts
	model.Params.GomoryPasses = args.gomorypasses
	model.Params.GubCoverCuts = args.gubcovercuts
	model.Params.ImpliedCuts = args.impliedcuts
	model.Params.INFProofCuts = args.infproofcuts
	model.Params.MIPSepCuts = args.mipsepcuts
	model.Params.MIRCuts = args.mircuts
	model.Params.ModKCuts = args.modkcuts
	model.Params.NetworkCuts = args.networkcuts
	model.Params.ProjImpliedCuts = args.projimpliedcuts
	model.Params.RelaxLiftCuts = args.relaxliftcuts
	model.Params.RLTCuts = args.rltcuts
	model.Params.StrongCGCuts = args.strongcgcuts
	model.Params.SubMIPCuts = args.submipcuts
	model.Params.ZeroHalfCuts = args.zerohalfcuts

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

	print('Converting to MIP..')
	sys.stdout.flush()

	os.environ['GRB_LICENSE_FILE'] = "/home/fokkinga/licenses/" + socket.gethostname() + "/gurobi.lic"

	bdd = read_bdd(bdd_file_name)

	model = MipBuilder(bdd, int(max_card), 1)
	
	set_parameters(model.model, args)

	'''
	if("citation" in name): #create transaction database for FIM setting
		db_file_name = os.path.dirname(os.path.dirname(name)) + '/databases/' + os.path.basename(name)[:9] + '.txt'
		new_db_file = temp_dir + '/' + os.path.basename(name)[:9] + '_' + random_id + '_db.txt'
		builder.convert_transactions(db_file_name, new_db_file)		
	'''
	print('Solving..')
	sys.stdout.flush()

	model.solve()

	print('Solution:')
	print(model.obj_val)
	print(model.solution)

	#remove the additional files that were created
	subprocess.check_call('rm ' + temp_file_name, shell=True)
	subprocess.check_call('rm ' + bdd_file_name, shell=True)
	
elif args.struct == 'sdd':
	print('Compiling SDD..')
	sys.stdout.flush()
	builder = SDDBuilder(problogfile=temp_file_name, minimize=args.sdd_minimize, dyn_minimize=args.sdd_dyn_minimize, args=args)
	print('Converting to MIP..')
	sys.stdout.flush()

	os.environ['GRB_LICENSE_FILE'] = "/home/fokkinga/licenses/" + socket.gethostname() + "/gurobi.lic"
	formula = builder.formula()
	sdd2mip_builder = sdd2mip_builder(sdd_formula = formula, opttype='maxSumProb', csttype='ubTheory', threshold=float(max_card), optqueries=formula.labeled())
	model = sdd2mip_builder.model
	set_parameters(model, args)
	
	print('Solving...')
	sys.stdout.flush()
	
	sdd2mip_builder.solve()
	
	sys.stdout.flush()
	print('Finished, obj_val of solution:')
	print(model.obj_val)
	#TODO: print solution?
	
	subprocess.check_call('rm ' + temp_file_name, shell=True)

print("RUN SUCCESFULLY COMPLETED")

