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
  

#include "bddModel.hpp"


using Gecode::FloatVarArgs;

BDDModel::BDDModel(const BDDModelOptions& opt, const BDD &b) : 
                        bdd(b),
                        fvars(*this, bdd.numberOfNodes + 2, 0.0, 1.0),
                        bvars(*this, bdd.numberOfDecisionVars, 0, 1),
                        rootVar(*this, 0.0, bdd.roots.size()),
                        cardVar(*this, 0, bdd.numberOfVariables)
{

    // nodes -1 and -2 represent false and true, respectively
    // don't need to set propagation level, because fixed
    rel(*this, fvars[getIndex(-1)] == 0.0);
    rel(*this, fvars[getIndex(-2)] == 1.0);

    for (int node = 0; node < bdd.numberOfNodes; node++)
    {
        int hiChild = bdd.hiChildren[node];
        int hiIndex = getIndex(hiChild);
        int loChild = bdd.loChildren[node];
        int loIndex = getIndex(loChild);
        FloatVar &loNode = fvars[loIndex];
        FloatVar &hiNode = fvars[hiIndex];

        int nodeVar = bdd.nodeToVar[node];
        double pw = bdd.positiveWeights[nodeVar],
               nw = bdd.negativeWeights[nodeVar];
        if (!bdd.isDecisionVar(nodeVar)) {      // stochastic variable
            // introduce constraint that represents weighted sum of children
            rel(*this, fvars[node] == pw * hiNode + nw * loNode);
        } else {
            int bvarID = bdd.dMapBddToCp[nodeVar];
            BoolVar &b = bvars[bvarID];
            rel(*this, b >> (fvars[node] == hiNode));
            rel(*this, (!b) >> (fvars[node] == loNode));
        }
    }

    FloatVarArgs r;
    for (auto root : bdd.roots)
        r << fvars[root];
    rel(*this, rootVar == sum(r));

    // integer variable, but it doesn't seem to make sense to apply different
    // integer propagation levels here for configuration
    rel(*this, cardVar == sum(bvars));

    Gecode::Rnd randomness;
    randomness.seed(opt.seed());

    if ( (opt.branching() == 0) || (opt.branching() >= 4) ) {
      if (opt.branching_value() == 0) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(opt.branching()), 
               BOOL_VAL_MIN());
      } else if (opt.branching_value() == 1) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(opt.branching()), 
               BOOL_VAL_MAX());
      } else if (opt.branching_value() == 2) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(opt.branching()), 
               BOOL_VAL_RND(randomness));
      }
    } else if (opt.branching() == 1) {
      if (opt.branching_value() == 0) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(opt.branching(), randomness), 
               BOOL_VAL_MIN());
      } else if (opt.branching_value() == 1) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(opt.branching(), randomness), 
               BOOL_VAL_MAX());
      } else if (opt.branching_value() == 2) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(opt.branching(), randomness), 
               BOOL_VAL_RND(randomness));
      }
    } 
}

void BDDModel::getSolution(vector<int> &solution)
{
    solution.resize(bdd.numberOfDecisionVars);
    for (int i = 0; i < bdd.numberOfDecisionVars; i++)
        solution[i] = bvars[i].val();
}

MaxProbModel::MaxProbModel(const BDDModelOptions& opt, 
                           const Gecode::Search::Options &sopt, const BDD &bdd) : 
                BDDModel(opt, bdd)
{
    rel(*this, cardVar <= static_cast<int>(opt.threshold()), opt.ipl());
}

MinCardModel::MinCardModel(const BDDModelOptions& opt, 
                           const Gecode::Search::Options &sopt, const BDD &bdd) : 
                BDDModel(opt, bdd)
{
    rel(*this, rootVar > opt.threshold());
}