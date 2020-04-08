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
#include <iostream>
#include <gecode/driver.hh>
#include <gecode/float.hh>
#include <gecode/int.hh>
#include <gecode/minimodel.hh>
#include "bdd.hpp"

// variable branching heuristics
using Gecode::BOOL_VAR_NONE;    // lexicographical
using Gecode::BOOL_VAR_RND;     // random
using Gecode::BOOL_VAR_MERIT_MIN;
using Gecode::BOOL_VAR_MERIT_MAX;
using Gecode::BOOL_VAR_DEGREE_MIN;     // smallest degree
using Gecode::BOOL_VAR_DEGREE_MAX;     // largest degree
using Gecode::BOOL_VAR_AFC_MIN;     // smallest accumulated failure count
using Gecode::BOOL_VAR_AFC_MAX;     // largest accumulated failure count
using Gecode::BOOL_VAR_ACTION_MIN;     // lowest action
using Gecode::BOOL_VAR_ACTION_MAX;     // highest action 
using Gecode::BOOL_VAR_CHB_MIN;     // lowest CHB Q-score
using Gecode::BOOL_VAR_CHB_MAX;     // highest CHB Q-score

using Gecode::BOOL_VAL_MAX;
using Gecode::BOOL_VAL_MIN;
using Gecode::BOOL_VAL_RND;

using Gecode::BoolVar;
using Gecode::BoolVarArray;
using Gecode::FloatVar;
using Gecode::FloatVarArray;
using Gecode::IntVar;
using Gecode::Space;
using Gecode::Search::Options;
using std::cerr;
using std::cout;
using std::endl;
using std::vector;

enum MergeType {implication, maximization};
extern MergeType MERGE; 
extern bool GACPROP;

class BDDModelOptions : public Gecode::Options {
  protected: 
    Gecode::Driver::IntOption _branching_value; 
    Gecode::Driver::DoubleOption _threshold; 
    Gecode::Driver::StringOption _optimization; 
    string _filename;
  
  public:
    
    BDDModelOptions(const char* s) : Gecode::Options(s),
      _branching_value("branching-value", "{0|1|2 (random)}", 0),
      _threshold("threshold", "THRESHOLD"),
      _optimization("optimization", "{mincard|maxprob}") {
        add(_branching_value);
        add(_threshold);
        add(_optimization);
        _optimization.add(0, "mincard", "Minimize cardinality of the solution");
        _optimization.add(1, "maxprob", "Maximize expectation over set of interest");
      }
    void parse(int& argc, char*argv[]) {
      // Parse regular options
      Gecode::Options::parse(argc, argv);
      // Filename, should be at position 1
      if (argc == 1) {
        help();
        exit(1);
      }
      _filename = argv[1];
      argc--;
    }
    int branching_value(void) const {return _branching_value.value();}
    double threshold(void) const {return _threshold.value();}
    int optimization(void) const {return _optimization.value();}
    string filename(void) const {return _filename;}

    virtual void help(void) {
      Gecode::Options::help();
      cerr << "BDD-FILE must be the last argument" << endl;
    }
};

class BDDModel : public Space
{
  private:
    const BDD &bdd;
    int propagation_type;

  protected:
    FloatVarArray fvars;
    vector<FloatVarArray> cfvars;
    BoolVarArray bvars;
    FloatVar rootVar;
    FloatVarArray cRootVars;
    IntVar cardVar;

  public:
    BDDModel(const BDDModelOptions &opt, const BDD &b);
    BDDModel(BDDModel &s) : Space(s),
                            bdd(s.bdd),
                            fvars(s.fvars),
                            bvars(s.bvars),
                            cfvars(s.cfvars),
                            rootVar(s.rootVar),
                            cRootVars(s.cRootVars),
                            cardVar(s.cardVar)
    {
        fvars.update(*this, s.fvars);
        bvars.update(*this, s.bvars);
        rootVar.update(*this, s.rootVar);
        cardVar.update(*this, s.cardVar);
        cRootVars.update(*this, s.cRootVars);
        for (int i=0; i<bdd.numberOfDecisionVars; i++) {
          cfvars[i].update(*this, s.cfvars[i]);
        }
    }

    // Variable branching strategies variants
    enum {
      BOOL_VAR_NONE, 
      BOOL_VAR_RND,
      BOOL_VAR_MERIT_MIN,
      BOOL_VAR_MERIT_MAX,
      BOOL_VAR_DEGREE_MIN,  
      BOOL_VAR_DEGREE_MAX,
      BOOL_VAR_AFC_MIN,
      BOOL_VAR_AFC_MAX,
      BOOL_VAR_ACTION_MIN,
      BOOL_VAR_ACTION_MAX,
      BOOL_VAR_CHB_MIN,
      BOOL_VAR_CHB_MAX
    };

    virtual void constrain(const Space &) = 0;
    virtual double getObjectiveValue(void) const = 0;

    inline size_t getIndex(int id)
    {
        return (id < 0) ? bdd.numberOfNodes + 2 + id : id;
    }
    void getSolution(vector<int>&);
};

class MaxProbModel : public BDDModel
{
  public:
    MaxProbModel(const BDDModelOptions &opt, const Gecode::Search::Options &sopt, 
                 const BDD &bdd);

    MaxProbModel(MaxProbModel &s) : BDDModel(s) {}

    virtual Space *copy(void)
    {
        return new MaxProbModel(*this);
    }

    virtual void constrain(const Space &_best)
    {
        const MaxProbModel &best = static_cast<const MaxProbModel &>(_best);
        rel(*this, rootVar > best.rootVar.max());
    }

    virtual double getObjectiveValue(void) const
    {
        return static_cast<double>(rootVar.max());
    }
};

class MinCardModel : public BDDModel
{
  public:
    MinCardModel(const BDDModelOptions &opt, const Gecode::Search::Options &sopt, 
                 const BDD &bdd);

    MinCardModel(MinCardModel &s) : BDDModel(s) {}

    virtual Space *copy(void)
    {
        return new MinCardModel(*this);
    }

    virtual void constrain(const Space &_best)
    {
        const MinCardModel &best = static_cast<const MinCardModel &>(_best);
        rel(*this, cardVar < best.cardVar.max());
    }

    virtual double getObjectiveValue(void) const
    {
        return static_cast<double>(cardVar.val());
    }
};