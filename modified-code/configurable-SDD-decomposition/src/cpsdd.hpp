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

#pragma once

#include <string>
#include <vector>
#include "cpsolve.hpp"

using std::string;
using std::vector;

class Model
{
public:
    Model();
    int addIntVar();
    int addRealVar();
    void addProd(int, int, int, double, double);
    void addSum(int, int, int, double, double);
    void addConstraintSumProb(vector< int >, bool, double);
    void addConstraintProb(int, bool, double);
    void addConstraintTheory(bool, int);
    void setObjectiveSumProb(vector< int >, bool);
    void setObjectiveProb(int, bool);
    void setObjectiveTheory(vector< int >, bool);
    void optimize();
    void setTimeOut(long int);
    double getObj();
    bool hasSolution();
    bool timedOut();
    vector< bool > getSolution(vector< int>);
    
    // The configuration stuff
    void setVarBranchingHeuristic(int);
    void setValBranchingHeuristic(int);
    void setDecay(double);
    void setCD(int);
    void setAD(int);
    void setThreads(int);
    void setIPL(int);
    void setSeed(int);
    int varBranchingHeuristic(void);
    int valBranchingHeuristic(void);
    double decay(void);
    int cd(void);
    int ad(void);
    int threads(void);
    int ipl(void);
    int seed(void);

private:
    vector< int > int_ids;
    vector< int > real_ids;
    vector< ConstraintArgs > prod_args;
    vector< ConstraintArgs > sum_args;
    map< int, bool > solution_map;
    int var_id;
    int obj_id;
    int cons_id;
    double threshold;
    double objVal;
    double runtime;
    long int timeout;
    bool has_solution;
    bool timed_out;
    SDDModel *solver;
};
