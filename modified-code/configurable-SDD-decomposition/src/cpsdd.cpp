/**
  * ----------------------------------------------------------------------------
  * CP model of decomposed SDD
  *
  * @author Behrouz Babaki behrouz.babaki@polymtl.ca
  * @author Siegfried Nijssen siegfried.nijssen@uclouvain.be
  * @author Anna Latour a.l.d.latour@liacs.leidenuniv.nl
  *         
  *         Relevant papers: 
  * 
  *         Combining Stochastic Constraint Optimization and Probabilistic 
  *         Programming. A.L.D. Latour, B. Babaki, and S. Nijssen. CP 2017
  *
  *         Stochastic Constraint Propagation for Mining Probabilistic Networks. 
  *         A.L.D. Latour, B. Babaki, Daniël Fokkinga, Marie Anastacio,
  *         Holger Hoos, and S. Nijssen. Submitted to the Artificial
  *         Intelligence Journal in April 2020.
  * 
  *         Licensed under MIT (https://github.com/latower/SCPMD-solving/blob/master/LICENSES/LICENSE).
  * ----------------------------------------------------------------------------
  */

#include <iostream>
#include <fstream>
#include <utility>
#include <gecode/search.hh>

#include "cpsdd.hpp"
#include "cpsolve.hpp"

using std::cout;
using std::endl;
using std::pair;
using std::ofstream;
using Gecode::BAB;

Model::Model()
{
    var_id = 0;
    obj_id = -1;
    cons_id = -1;
    threshold = 0;
    runtime = -1;
    timeout = -1;
    has_solution = false;
}

int Model::addIntVar()
{
    int id = var_id++;
    int_ids.push_back(id);
    return id;
}

int Model::addRealVar()
{
    int id = var_id++;
    real_ids.push_back(id);
    return id;
}

void Model::addProd(int arg_type, int cons_type, int z, double x1, double x2)
{
    prod_args.push_back(ConstraintArgs(arg_type, cons_type, z, x1, x2));
}

void Model::addSum(int arg_type, int cons_type, int z, double x1, double x2)
{
    sum_args.push_back(ConstraintArgs(arg_type, cons_type, z, x1, x2));
}

void Model::addConstraintProb(int _id, bool ub, double threshold)
{
    solver->addConstraintProb(_id, ub, threshold);
}

void Model::addConstraintSumProb(vector< int > ids, bool ub, double threshold)
{
    solver->addConstraintSumProb(ids, ub, threshold);
}

void Model::addConstraintTheory(bool ub, int threshold)
{
    solver->addConstraintTheory(ub, threshold);
}

void Model::setObjectiveProb(int obj_id, bool maximize)
{
    solver = new ObjProbSolver(int_ids, real_ids, prod_args, sum_args, obj_id, maximize);
}

void Model::setObjectiveSumProb(vector< int > obj_ids, bool maximize)
{
    solver = new ObjSumProbSolver(int_ids, real_ids, prod_args, sum_args, obj_ids, maximize);
}

void Model::setObjectiveTheory(vector< int > decs_ids, bool maximize)
{
    solver = new ObjTheorySolver(int_ids, real_ids, decs_ids, prod_args, sum_args, maximize);
}

void Model::setTimeOut(long int timeout_)
{
  timeout = timeout_;
}


void Model::optimize()
{
    Gecode::Search::Options sopt;

    sopt.c_d = cd();
    sopt.a_d = ad();
    sopt.threads = threads();

    cout << "variable branching heuristic: " << varBranchingHeuristic() << "\n"
         << "decay:                        " << decay() << "\n"
         << "branch first on:              " << valBranchingHeuristic() << "\n"
         << "threads:                      " << threads() << "\n"
         << "c-d:                          " << cd() << "\n"
         << "a-d:                          " << ad() << "\n"
         << "ipl:                          " << ipl() << "\n" 
         << "seed:                         " << seed() << "\n\n";

    solver->setBranching() ;

    if (timeout > 0)
    sopt.stop = Gecode::Search::Stop::time(timeout);
    BAB< SDDModel > e(solver, sopt);
    SDDModel *current_solution, *prev = e.next();
    if (prev) 
	while((current_solution = e.next())) {
	  delete prev; 
	  prev = current_solution;
	}
	
      has_solution = prev;
      timed_out = e.stopped();
      has_solution &= !timed_out;
    
    if (has_solution) {
      objVal = prev->getObjVal();
      vector< pair< int, bool > > sol = prev->getSolution();
      for(int i=0, s=sol.size(); i<s; i++)
	  solution_map[sol[i].first] = sol[i].second;
      delete prev;
    }
}

bool Model::hasSolution()
{
  return has_solution;
}

bool Model::timedOut()
{
  return timed_out;
}


double Model::getObj()
{
    return objVal;
}

vector< bool > Model::getSolution(vector< int > indices)
{
    int s = indices.size();
    vector< bool > solution(s);
    for(int i=0; i<s; i++)
        solution[i] = solution_map[indices[i]];
    return solution;
}

void Model::setVarBranchingHeuristic(int var_branching_heuristic) 
{
    solver->setVarBranchingHeuristic(var_branching_heuristic);
}

void Model::setValBranchingHeuristic(int val_branching_heuristic) 
{
    solver->setValBranchingHeuristic(val_branching_heuristic);
}

void Model::setDecay(double decay) 
{
    solver->setDecay(decay);
}

void Model::setCD(int cd) 
{
    solver->setCD(cd);
}

void Model::setAD(int ad) 
{
    solver->setAD(ad);
}

void Model::setThreads(int threads) 
{
    solver->setThreads(threads);
}

void Model::setIPL(int ipl) 
{
    solver->setIPL(ipl);
}

void Model::setSeed(int seed) 
{
    solver->setSeed(seed);
}

int Model::varBranchingHeuristic(void) 
{
    return solver->varBranchingHeuristic();
}

int Model::valBranchingHeuristic(void) 
{
    return solver->valBranchingHeuristic();
}

double Model::decay(void) 
{
    return solver->decay();
}

int Model::cd(void) 
{
    return solver->cd();
}

int Model::ad(void) 
{
    return solver->ad();
}

int Model::threads(void) 
{
    return solver->threads();
}

int Model::ipl(void) 
{
    return solver->ipl();
}

int Model::seed(void) 
{
    return solver->seed();
}