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

#pragma once
#include <vector>
#include <string>

using std::string;
using std::vector;

class BDD
{
public:
  BDD(string filename);
  void read(string filename);
  void print(void) const;
  bool isDecisionVar(int) const;

  int numberOfVariables;
  int numberOfDecisionVars;
  int numberOfNodes;
  vector<int> roots;
  vector<int> hiChildren;
  vector<int> loChildren;
  vector<int> nodeToVar;
  vector<vector<int>> varToNodes;
  vector<int> dMapBddToCp;
  vector<int> dMapCpToBdd;
  vector<double> positiveWeights;
  vector<double> negativeWeights;
};