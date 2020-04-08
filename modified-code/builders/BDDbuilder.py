"""
BDDbuilder
----------------------------------------------

A class for converting BDDs created by ProbLog using the dd library to the
input format required for the OscaR implementation.

@author: Anna Latour
@email:  a.l.d.latour@liacs.leidenuniv.nl
@date:   20 April 2018
@edited: 2020 (by Daniël Fokkinga)

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
import re		 
from problog.program import PrologFile
from problog.formula import LogicDAG
from problog.logic import Term, term2str
from problog import get_evaluatable
from collections import namedtuple
from datetime import datetime

BDDnode = namedtuple('BDDnode', ['level', 'ID', 'var', 'pos_weight',
								 'loID', 'hiID', 'lo_level', 'hi_level'])


class BDDBuilder(object):
	def __init__(self, problogfile=None,
				 dag=None,					   # provide a pre-compiled dag (optional)
				 dynamic_minimization=False,	 # minimise while the OBDD is being built
				 reorder_type=None,
				 verbose=True,
				 max_vars=None,
				 max_growth=None,
				 max_swaps=None
				 ):
		assert not (problogfile is None and dag is None), "Provide either a DAG or a ProbLog file"
		self._problogfile = problogfile
		self._dynamic_minimization = dynamic_minimization
		self._verbose = verbose

		# If no DAG is provided: parse program and ground it:
		if dag is None:
			if self._verbose:
				print(datetime.now().strftime('%Y-%m-%d, %Hh%Mm%Ss: Parse ProbLog program in ' + problogfile))
				sys.stdout.flush()
			program = PrologFile(problogfile)
			if self._verbose:
				print(datetime.now().strftime('%Y-%m-%d, %Hh%Mm%Ss: Ground the program'))
				sys.stdout.flush()
			dag = LogicDAG.create_from(program)
		# Create OBDD out of the DAG
		if self._verbose:
			if self._dynamic_minimization:
				print(datetime.now().strftime('%Y-%m-%d, %Hh%Mm%Ss: Create BDD with dynamic minimization'))
			else:
				print(datetime.now().strftime('%Y-%m-%d, %Hh%Mm%Ss: Create BDD without dynamic minimization'))
			sys.stdout.flush()
		self._problog_bdd = get_evaluatable('bdd').create_from(dag, dynamic_minimization=self._dynamic_minimization, reorder_type=reorder_type, max_swaps = max_swaps, max_growth=max_growth, max_vars=max_vars)
		self._manager = self._problog_bdd.get_manager() # is BDDManager(DDManager) in bdd_formula.py
		
		# Get the high-level bdd representation
		# This is BDD() class from dd library: https://github.com/tulip-control/dd/blob/master/dd/bdd.py
		self._autoref_bdd = self._manager.base
		print(datetime.now().strftime('%Y-%m-%d, %Hh%Mm%Ss: Finished initial BDD compilation'))
		print('Size of the initial OBDD:', len(self._autoref_bdd))
	'''
	def convert_transactions(self, oldfile, newfile):
		decvarname2bdddecvar = {term2str(self._bddvar2decvar[var][1].name): self._varinbdd2renamedvarinbdd[var]
						  for var in self._bddvar2decvar}
		#print(len(decvarname2bdddecvar))
		#print(decvarname2bdddecvar)

		authorID2bdddecvar = dict()
		maxpat = re.compile("choice\(\d+,0,marketed\('(?P<authorID1>\d+)'\),'(?P<authorID2>\d+)'\)")
		for decvarname in decvarname2bdddecvar:
			m = re.match(maxpat, decvarname)
			authorID2bdddecvar[m.group('authorID1')] = decvarname2bdddecvar[decvarname]
		
		#print(len(authorID2bdddecvar))
		#print(authorID2bdddecvar)

		with open(oldfile, 'r') as infile:
			with open(newfile, 'w+') as outfile:
				for l in infile.readlines():
					selected_items = []
					transaction = list(l.split())
					for author in transaction:
						if author in authorID2bdddecvar:
							selected_items.append(authorID2bdddecvar[author])
					if len(selected_items) > 0:
						outfile.write(' '.join(str(a) for a in selected_items) + '\n')
	'''					
			
	def minimize(self, reorder_type, max_vars, max_swaps, max_growth):
		print(reorder_type, max_vars, max_swaps, max_growth)
		size = len(self._autoref_bdd)
		print('Size before reordering:', size)
		self._manager.reorder(reorder_type, max_vars, max_swaps, max_growth)
		size = len(self._autoref_bdd)
		print('Size after reordering:', size)
		sys.stdout.flush()
		#bdd = self._autoref_bdd 
		#order = {var: bdd.level_of_var(var) for var in bdd.vars}
		#print(order)

	def read_in_dagnodes(self):
		# Loop over all DAG nodes
		for node_id, node_info, node_type in self._problog_bdd:
			# Record which variables are decision variables and which are
			# stochastic variables
			if node_type == 'atom':
				bddvar = self._atom2bddvar[node_id]
				if node_info.probability == Term('?'):
					self._bddvar2decvar[bddvar] = (node_id, node_info)
					self._bddvar2weight[bddvar] = None
				else:
					self._bddvar2probvar[bddvar] = (node_id, node_info)
					self._bddvar2weight[bddvar] = term2str(node_info.probability)

	def construct_bdd(self):
		# Start at the roots of the DAG
		for (_, r) in self._problog_bdd.queries():
			new_root_id, _ = self.add_bdd_node(self._problog_bdd.get_inode(r))
			self._dagroot2bddroot[r] = new_root_id

		self._number_of_nodes = len(self._nodes)
		self._number_of_variables = len(self._varsinbdd)

		# Because we are renumbering the variables, we need to create a couple
		# of translation dictionaries etc.
		for i, var in enumerate(sorted(self._varsinbdd)):
			self._varinbdd2renamedvarinbdd[var] = i
			self._renamedvarinbdd2varinbdd.append(var)
			self._renamedvarinbdd2weight.append(self._bddvar2weight[var])

	def translate_terminal_nodeID(self, nodeID):
		if nodeID == -1:
			return -1
		if nodeID == 1:
			return -2

	def add_bdd_node(self, bdd_node):
		# Take care of the terminal nodes
		# In dd, the terminal nodes are -1 (0) and 1 (1)
		# For the format we are using, we need to change this
		# to -2 (0) and -1 (1)
		# Since we are at the end of recursion here, renaming doesn't influence
		# the further development of this process
		
		#when using cudd, bdd_node is a little different..
		if bdd_node.var == None:
			if(bdd_node.negated): #constant 0
				nodeID = -1
			else: #constant 1
				nodeID= -2
			return nodeID, 0		

		# If we are not at a terminal node, we continue processing
		level, lo, hi = self._autoref_bdd.succ(bdd_node)
		
		var = self._autoref_bdd.var_at_level(level)

		self._varsinbdd.add(int(var[1:]))

		loID = None
		hiID = None
		if lo is not None:
			loID = lo.__int__()
		if hi is not None:
			hiID = hi.__int__()


		if loID in [-1, 1]:
			loID = self.translate_terminal_nodeID(loID)
		if hiID in [-1, 1]:
			hiID = self.translate_terminal_nodeID(hiID)

		if bdd_node not in self._nodes.keys():
			new_node_id = self._number_of_nodes
			self._number_of_nodes += 1
			pos_weight = self._bddvar2weight[int(var[1:])]
			self._nodes[bdd_node] = BDDnode(ID=new_node_id, var=int(var[1:]),
											pos_weight=pos_weight, level=level,
											loID=None, hiID=None,
											lo_level=None, hi_level=None)
			lo_level = None
			hi_level = None
			if lo is not None:
				loID, lo_level = self.add_bdd_node(lo)
			if hi is not None:
				hiID, hi_level = self.add_bdd_node(hi)

			self._nodes[bdd_node] = BDDnode(ID=new_node_id, var=int(var[1:]),
											pos_weight=pos_weight, level=level,
											loID=loID, hiID=hiID,
											lo_level=lo_level, hi_level=hi_level)
			return new_node_id, level

		else:
			return self._nodes[bdd_node].ID, self._nodes[bdd_node].level

	def prepare_write2file(self):

		self._nodes = dict()
		self._number_of_nodes = 0
		self._number_of_variables = 0

		self._bddvar2atom = self._problog_bdd.var2atom
		self._atom2bddvar = {self._bddvar2atom[bddvar]: bddvar
							 for bddvar in self._bddvar2atom.keys()}

		self._varsinbdd = set()
		self._bddvar2decvar = dict()
		self._bddvar2probvar = dict()
		self._bddvar2weight = dict()
		self._bddvar2maxvarID = dict()
		self._dagroot2bddroot = dict()
		self._varinbdd2renamedvarinbdd = dict()
		self._renamedvarinbdd2varinbdd = []
		self._renamedvarinbdd2weight = []
		self._decisionvariables = set() #added by daniel										  

		print('Read in DAG nodes...')
		sys.stdout.flush()
		self.read_in_dagnodes()

		print('Construct BDD...')
		sys.stdout.flush()
		self.construct_bdd()

	def write_to_file(self, filename, comments=True):
		self.prepare_write2file()

		print("Writing to file...")
		with open(filename, 'w') as bddfile:
			bddfile.write('{nn} {nv}\n'.format(nn=self._number_of_nodes,
											   nv=self._number_of_variables))
			bddfile.write(' '.join(
				[str(r) for r in self._dagroot2bddroot.values()]) + '\n')

			for tup in sorted(self._nodes.values(),
							  key=lambda node: (node.ID, node.level)):
				bddfile.write('{v} {loID} {hiID}\n'.format(
					v=self._varinbdd2renamedvarinbdd[tup.var], loID=tup.loID, hiID=tup.hiID))

			bddfile.write(' '.join([w + ' ' + str(1 - float(w))
									if w is not None else '1.0 1.0'
									for w in self._renamedvarinbdd2weight])
						  + '\n')

			bddfile.write(' '.join(
				[str(self._varinbdd2renamedvarinbdd[bddvar])
				 for bddvar in sorted(self._bddvar2decvar.keys())
				 if bddvar in self._varsinbdd]) + '\n')

			if not comments:
				return

			bddfile.write('\n')
			bddfile.write('c BDDnodeID  BDDvar  order  DAGnodeID  type  weight  name				  \n')
			bddfile.write('c -------------------------------------------------------------------------\n')
			for tup in sorted(self._nodes.values(),
							  key=lambda node: (node.ID, node.level)):
				if tup.var in self._bddvar2decvar:
					dagID = self._bddvar2decvar[tup.var][0]
					node_type = 'max'
					weight = '-'
					name = term2str(self._bddvar2decvar[tup.var][1].name)
					self._decisionvariables.add(self._bddvar2decvar[tup.var][1].name) #added by daniel																   
				if tup.var in self._bddvar2probvar:
					dagID = self._bddvar2probvar[tup.var][0]
					node_type = 'prob'
					weight = self._bddvar2weight[tup.var]
					name = term2str(self._bddvar2probvar[tup.var][1].name)
				bddfile.write('c {:<11d}{:<8d}{:<7d}{:<11d}{:<6s}{:<8s}{:s}\n'.format(
					tup.ID, self._varinbdd2renamedvarinbdd[tup.var], tup.level, dagID, node_type, weight, name))

			bddfile.write('\n')
			bddfile.write('c DAGroot  BDDnodeID  name\n')
			bddfile.write('c ------------------------------------------\n')
			for (name, root) in self._problog_bdd.queries():
				if root not in self._dagroot2bddroot:
					continue
				bddfile.write('c {:<9d}{:<11d}{:s}\n'.format(
					root, self._dagroot2bddroot[root], term2str(name)))


	def to_dot(self):
		print("Creating dot text...")
		dot = "graph BDD { "
		dot += "-1 [label=0, shape=box]; -2 [label=1, shape=box]; "

		# add nodes:
		for tup in sorted(self._nodes.values(), reverse=True):
			shape = "triangle"
			if tup.var in self._bddvar2probvar:
				shape = "ellipse"
			elif tup.var in self._bddvar2decvar:
				shape = "box"

			dot += "{n} [label=\"v{v} ({i})\t\t\tFeasible:\t\t\lPath weight:\t\tFreeIn:\t\t\lValue:\t\t\tFreeOut:\t\t\", shape={s}]; ".format(
			n=tup.ID, v=self._varinbdd2renamedvarinbdd[tup.var], i=tup.ID, s=shape)

		# add edges:
		for tup in sorted(self._nodes.values()):
			w = self._bddvar2weight.get(tup.var, None)
			if w is None:
				dot += "{r} -- {lo} [style=dashed]; {r} -- {hi}; ".format(
					r=tup.ID, lo=tup.loID, hi=tup.hiID)
			else:
				w_hi = float(w)
				w_lo = 1-w_hi
				dot += "{:d} -- {:d} [label={:.2f}, style=dashed]; {:d} -- {:d} [label={:.2f}]; ".format(
					tup.ID, tup.loID, w_lo, tup.ID, tup.hiID, w_hi)

		# add query names
		for (name, root) in self._problog_bdd.queries():
			if root not in self._dagroot2bddroot:
				continue
			dot += "r{r} [label=\"{n}\", shape=plaintext]; ".format(r=root, n=term2str(name))
			dot += "r{r} -- {n} [style=dashed]; ".format(r=root, n=self._dagroot2bddroot[root])

		dot += "}"

		return dot
