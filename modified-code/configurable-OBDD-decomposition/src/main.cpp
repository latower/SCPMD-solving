/**
  * ----------------------------------------------------------------------------
  * CP model of decomposed OBDD
  *
  * @author Behrouz Babaki behrouz.babaki@polymtl.ca
  * @author Siegfried Nijssen siegfried.nijssen@uclouvain.be
  * @author Anna Latour a.l.d.latour@liacs.leidenuniv.nl
  *         
  *         Relevant papers: 
  * 
  *         Stochastic Constraint Propagation for Mining Probabilistic Networks. 
  *         A.L.D. Latour, B. Babaki, and S. Nijssen. IJCAI 2019
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
#include <chrono>
#include <gecode/driver.hh>
#include <gecode/int.hh>
#include <gecode/search.hh>
#include "bdd.hpp"
#include "bddModel.hpp"

using Gecode::BAB;
using Gecode::Search::Statistics;
using Gecode::Support::Timer;
using std::cerr;
using std::cout;
using std::endl;
using std::chrono::duration_cast;
using std::chrono::high_resolution_clock;
using std::chrono::microseconds;

// needed to print <vector <string> >
template<class T>
std::ostream& operator <<(std::ostream& os, const std::vector<T>& v)
{
    std::copy(v.begin(), v.end(), std::ostream_iterator<T>(std::cout, " ")); 
    return os;
}

template <typename M>
void runModel(const BDDModelOptions &opt, const Gecode::Search::Options &sopt, 
              const BDD &b);
void printSolution(double, const vector<int> &, const BDD &);
void printStatistics(const Statistics &, int nrSols,
                     high_resolution_clock::time_point);

int main(int argc, char **argv)
{
    string bdd_file_path;
    string optimization_type;
    string threshold;
    int var_branch_heur_n;
    int val_branch_heur_n;


    BDDModelOptions opt("BDDmodel");

    opt.branching(BDDModel::BOOL_VAR_NONE, "lexicographical", "use BOOL_VAR_NONE");
    opt.branching(BDDModel::BOOL_VAR_RND, "random", "use BOOL_VAR_RND");
    opt.branching(BDDModel::BOOL_VAR_DEGREE_MIN, "smallest-degree", "use BOOL_VAR_DEGREE_MIN");
    opt.branching(BDDModel::BOOL_VAR_DEGREE_MAX, "largest-degree", "use BOOL_VAR_DEGREE_MAX");
    opt.branching(BDDModel::BOOL_VAR_AFC_MIN, "smallest-afc", "use BOOL_VAR_AFC_MIN");
    opt.branching(BDDModel::BOOL_VAR_AFC_MAX, "largest-afc", "use BOOL_VAR_AFC_MAX");
    opt.branching(BDDModel::BOOL_VAR_ACTION_MIN, "lowest-action", "use BOOL_VAR_ACTION_MIN");
    opt.branching(BDDModel::BOOL_VAR_ACTION_MAX, "highest-action", "use BOOL_VAR_ACTION_MAX");
    opt.branching(BDDModel::BOOL_VAR_CHB_MIN, "lowest-chb", "use BOOL_VAR_CHB_MIN");
    opt.branching(BDDModel::BOOL_VAR_CHB_MAX, "highest-chb", "use BOOL_VAR_CHB_MAX");

    opt.seed(42);

    opt.parse(argc, argv);

    if (argc > 1) {
      cout << "argc: " << argc << endl;
      cerr << "Could not parse all arguments." << endl;
      opt.help();
      exit(1);
    }

    cout 
         << "variable branching heuristic: " << opt.branching() << "\n"
         << "decay:                        " << opt.decay() << "\n"
         << "branch first on:              " << opt.branching_value() << "\n"
         << "threads:                      " << opt.threads() << "\n"
         << "c-d:                          " << opt.c_d() << "\n"
         << "a-d:                          " << opt.a_d() << "\n"
         << "ipl:                          " << opt.ipl() << "\n" 
         << "seed:                         " << opt.seed() << "\n\n";

    Gecode::Search::Options sopt;

    sopt.c_d = opt.c_d();
    sopt.a_d = opt.a_d();
    sopt.threads = opt.threads();

    BDD b(opt.filename());

    if (opt.optimization() == 0) {
      runModel<MinCardModel>(opt, sopt, b);
    } else if (opt.optimization() == 1) {
      runModel<MaxProbModel>(opt, sopt, b);
    }

}

template <typename M>
void runModel(const BDDModelOptions &opt, const Gecode::Search::Options &sopt, 
              const BDD &b)
{
    M m(opt, sopt, b);
    double objectiveValue;
    vector<int> solution(b.numberOfDecisionVars);
    long nSols = 0;
    bool found = false;

    BAB<M> e(&m, sopt);    
    // BAB<M> e(&m);    
    auto start = high_resolution_clock::now();
    while (M *currentSolution = e.next())
    {
        found = true;
        nSols++;
        objectiveValue = currentSolution->getObjectiveValue();
        currentSolution->getSolution(solution);
        delete currentSolution;
    }

    if (found)
    {
        printStatistics(e.statistics(), nSols, start);
        printSolution(objectiveValue, solution, b);
    }
    else
        cout << "infeasible" << endl;
}

void printSolution(double objectiveValue,
                   const vector<int> &solution,
                   const BDD &bdd)
{
    cout << "***** SOLUTION *****" << endl;
    cout << objectiveValue << endl;
    cout << '{';
    for (int i = 0; i < bdd.numberOfDecisionVars; i++)
    {
        cout << bdd.dMapCpToBdd[i] << ": " << solution[i];
        if (i < bdd.numberOfDecisionVars - 1)
            cout << ", ";
    }
    cout << '}' << endl;
}

void printStatistics(const Statistics &s,
                     int nSols,
                     high_resolution_clock::time_point start)
{
    cout << "number of solutions: " << nSols << endl;
    cout << "number of nodes: " << s.node << endl;
    cout << "number of failures: " << s.fail << endl;
    cout << "number of propagations: " << s.propagate << endl;
    high_resolution_clock::time_point end = high_resolution_clock::now();
    auto runtime = duration_cast<microseconds>(end - start).count();
    cout << "runtime: " << runtime << endl;
}