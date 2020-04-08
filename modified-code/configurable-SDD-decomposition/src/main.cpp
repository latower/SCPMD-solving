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
#include "cpsdd.hpp"

using std::cout;
using std::endl;

int main(void)
{
    cout << "Hello world!" << endl;
    Model m;
    cout << m.addIntVar() << endl;
    cout << m.addIntVar() << endl;
    cout << m.addRealVar() << endl;
    m.setObjectiveProb(0, true);
    m.addConstraintProb(2, true, 2);
    m.optimize();
    cout << m.getObj() << endl;
    return 0;
}
