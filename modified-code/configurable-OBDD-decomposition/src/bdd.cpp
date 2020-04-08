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
#include <fstream>
#include <sstream>
#include <string>
#include "bdd.hpp"

using std::cin;
using std::cout;
using std::endl;
using std::getline;
using std::ifstream;
using std::istringstream;
using std::string;

template <typename T>
void readLine(ifstream &i, vector<T> &output)
{
    output.clear();
    string lineStr;
    getline(i, lineStr);
    istringstream lineSS(lineStr);
    T value;
    while (lineSS >> value)
        output.push_back(value);
}

void BDD::print(void) const
{
    cout << numberOfNodes << " " << numberOfVariables << endl;
    for (auto root : roots)
        cout << root << " ";
    cout << endl;
    for (int i = 0; i < numberOfNodes; i++)
        cout << nodeToVar[i] << " "
             << loChildren[i] << " "
             << hiChildren[i] << endl;
    for (int i = 0; i < numberOfVariables; i++)
        cout << positiveWeights[i] << " "
             << negativeWeights[i] << " ";
    cout << endl;
}

BDD::BDD(string filename)
{
    read(filename);
}

void BDD::read(string filename)
{

    ifstream bddStream;
    bddStream.open(filename);
    vector<int> intLine;
    vector<double> doubleLine;

    readLine(bddStream, intLine);
    numberOfNodes = intLine[0];
    numberOfVariables = intLine[1];
    varToNodes.assign(numberOfVariables, vector<int>());

    readLine(bddStream, roots);

    for (int counter = 0; counter < numberOfNodes; counter++)
    {
        readLine(bddStream, intLine);
        nodeToVar.push_back(intLine[0]);
        varToNodes[intLine[0]].push_back(counter);
        loChildren.push_back(intLine[1]);
        hiChildren.push_back(intLine[2]);
    }

    readLine(bddStream, doubleLine);
    for (int counter = 0; counter < numberOfVariables; counter++)
    {
        positiveWeights.push_back(doubleLine[counter * 2]);
        negativeWeights.push_back(doubleLine[counter * 2 + 1]);
    }

    readLine(bddStream, intLine);
    numberOfDecisionVars = intLine.size();
    dMapBddToCp.assign(numberOfVariables, -1);
    dMapCpToBdd.assign(numberOfDecisionVars, -1);
    
    for (int i = 0, s = intLine.size(); i < s; i++)
    {
        int varID = intLine[i];
        dMapBddToCp[varID] = i;
        dMapCpToBdd[i] = varID;
    }

    bddStream.close();
}

bool BDD::isDecisionVar(int id) const{
    return (dMapBddToCp[id] >= 0);
}