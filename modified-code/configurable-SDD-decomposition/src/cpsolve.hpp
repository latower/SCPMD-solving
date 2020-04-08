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

#include <vector>
#include <map>
#include <utility>
#include <iostream>
// #include <gecode/kernel.hh>
#include <gecode/driver.hh>
#include <gecode/int.hh>
#include <gecode/float.hh>
#include <gecode/minimodel.hh>

using std::vector;
using std::map;
using std::pair;
using Gecode::Space;
using Gecode::FloatVar;
using Gecode::FloatVarArray;
using Gecode::IntVarArray;
using Gecode::FloatVarArgs;
using Gecode::BoolVarArray;
using Gecode::IntVar;
using Gecode::rel;
using Gecode::FRT_GR;
using Gecode::FRT_LE;
using Gecode::IRT_GR;
using Gecode::IRT_LE;

using std::cout;
using std::endl;

class ConstraintArgs
{
public:
    /*
     * argument types:
     * 1: x1 is the index of a boolean variable, x2 is double value
     * 2: x1 and x2 are both indices of boolean variables
     * 3: x1 in the index of a float variable, x2 is double value
     * 4: x1 and x2 are both float variables
     * 5: x1 is the index of a boolean variable, x2 is the index of a float variable
     * 6: x1 and x2 are both double values
     *
     * constraint types:
     * 0: x1  , x2
     * 1: x1  , !x2
     * 2: !x1 , x2
     * 3: !x1 , !x2
     *
     */
    ConstraintArgs(int _arg_type, int _cons_type,
                   int _z, double _x1, double _x2) :
        arg_type(_arg_type), cons_type(_cons_type),
        z(_z), x1(_x1), x2(_x2) {}
    int arg_type, cons_type, z;
    double x1, x2;
};

class SDDModel : public Space
{
public:
    SDDModel(const vector< int >&,
             const vector< int >&,
             const vector< ConstraintArgs >&,
             const vector< ConstraintArgs >&);

    SDDModel(SDDModel& s) : Space(s),
        int_ids(s.int_ids), real_ids(s.real_ids),
        prod_args(s.prod_args), sum_args(s.sum_args),
        int_map(s.int_map), bvars(s.bvars) 
    {
        bvars.update(*this, s.bvars);
    }

    virtual double getObjVal() const = 0;
    vector< pair< int, bool > > getSolution();

private:
    const vector< int >& int_ids;
    const vector< int >& real_ids;
    const vector< ConstraintArgs >& prod_args;
    const vector< ConstraintArgs >& sum_args;
    void post_sum_constraints(const ConstraintArgs&);
    void post_prod_constraints(const ConstraintArgs&);

    // The configuration stuff
    int _var_branching_heuristic = 0;
    int _val_branching_heuristic = 0;
    double _decay = 1.0;
    int _cd = 8;
    int _ad = 2;
    int _threads = 1;
    int _ipl = 0;
    int _seed = 42;

protected:
    map< int, int > id_map;
    map< int, int > int_map;
    map< int, int > neg_map;

public:
    FloatVarArray fvars;
    BoolVarArray bvars, nvars;
    void addConstraintProb(int, bool, double);
    void addConstraintSumProb(vector< int >, bool, double);
    void addConstraintTheory(bool, int);

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

    void setBranching(void);
};

class ObjProbSolver : public SDDModel
{
public:
    ObjProbSolver(const vector< int >&,
                  const vector< int >&,
                  const vector< ConstraintArgs >&,
                  const vector< ConstraintArgs >&,
                  int, bool);
    virtual Gecode::Space* copy(void)
    {
        return new ObjProbSolver(*this);
    }

    ObjProbSolver(ObjProbSolver& s) :
        SDDModel(s), ovar(s.ovar), maximize(s.maximize)
    {
        ovar.update(*this, s.ovar);
    }

    virtual void constrain(const Space& _best)
    {
        const ObjProbSolver& best = static_cast<const ObjProbSolver&> (_best);
        if(maximize)
            rel(*this, ovar, FRT_GR, best.ovar.max());
        else
            rel(*this, ovar, FRT_LE, best.ovar.min());
    }

    virtual double getObjVal() const
    {
        return static_cast<double> (ovar.max());
    }

private:
    FloatVar ovar;
    bool maximize;
};

class ObjSumProbSolver : public SDDModel
{
public:
    ObjSumProbSolver(const vector< int >&,
                     const vector< int >&,
                     const vector< ConstraintArgs >&,
                     const vector< ConstraintArgs >&,
                     vector< int >, bool);

    virtual Gecode::Space* copy(void)
    {
        return new ObjSumProbSolver(*this);
    }

    ObjSumProbSolver(ObjSumProbSolver& s) :
        SDDModel(s), ovar(s.ovar), maximize(s.maximize)
    {
        ovar.update(*this, s.ovar);
    }

    virtual void constrain(const Space& _best)
    {
        const ObjSumProbSolver& best = static_cast<const ObjSumProbSolver&> (_best);
        if(maximize)
            rel(*this, ovar, FRT_GR, best.ovar.max());
        else
            rel(*this, ovar, FRT_LE, best.ovar.min());
    }

    virtual double getObjVal() const
    {
        return static_cast<double> (ovar.max());
    }

private:
    FloatVar ovar;
    bool maximize;
};

class ObjTheorySolver : public SDDModel
{
public:
    ObjTheorySolver(const vector< int >&,
                    const vector< int >&,
                    const vector< int >&,
                    const vector< ConstraintArgs >&,
                    const vector< ConstraintArgs >&, bool);

    virtual Gecode::Space* copy()
    {
        return new ObjTheorySolver(*this);
    }

    ObjTheorySolver(ObjTheorySolver& s) :
        SDDModel(s), ivar(s.ivar), maximize(s.maximize)
    {
        ivar.update(*this, s.ivar);
    }

    virtual void constrain(const Space& _best)
    {
        const ObjTheorySolver& best = static_cast<const ObjTheorySolver&> (_best);
        if(maximize)
            rel(*this, ivar, IRT_GR, best.ivar.val());
        else
            rel(*this, ivar, IRT_LE, best.ivar.val());
    }

    virtual double getObjVal() const
    {
        return static_cast<double> (ivar.val());
    }

private:
    IntVar ivar;
    bool maximize;
};