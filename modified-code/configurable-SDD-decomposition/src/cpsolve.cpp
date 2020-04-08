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

#include <vector>
#include <iostream>
#include <utility>
#include <gecode/float.hh>

#include "cpsolve.hpp"

using std::vector;
using std::cout;
using std::endl;
using std::pair;
using std::make_pair;
using Gecode::branch;
using Gecode::INT_VAL_MAX;
using Gecode::INT_VAR_SIZE_MAX;

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

// value branching heuristics
using Gecode::BOOL_VAL_MAX;
using Gecode::BOOL_VAL_MIN;
using Gecode::BOOL_VAL_RND;

using Gecode::IntVar;
using Gecode::IntVarArgs;
using Gecode::channel;
using Gecode::IRT_EQ;
using Gecode::IRT_LQ;
using Gecode::IRT_GQ;
using Gecode::IRT_NQ;
using Gecode::FRT_LQ;
using Gecode::FRT_GQ;
using Gecode::FRT_EQ;
using Gecode::dom;
using Gecode::rel;
using Gecode::linear;
using Gecode::mult;
using Gecode::FloatVarArgs;
using Gecode::FloatValArgs;
using Gecode::BoolVar;
using Gecode::BoolVarArgs;
using Gecode::clause;
using Gecode::BOT_OR;
using Gecode::Reify;
using Gecode::RM_IMP;

SDDModel::SDDModel(const vector< int >& _int_ids,
                   const vector< int >& _real_ids,
                   const vector< ConstraintArgs >& _prod_args,
                   const vector< ConstraintArgs >& _sum_args):
    int_ids(_int_ids), real_ids(_real_ids),
    prod_args(_prod_args), sum_args(_sum_args),
    fvars(*this, _int_ids.size() + _real_ids.size(),
          // Gecode::Float::Limits::min, Gecode::Float::Limits::max),
          0.0, 1.0),
          // -100000.0, 100000.0),
    bvars(*this, _int_ids.size(), 0, 1),
    nvars(*this, _int_ids.size(), 0, 1)
{
    // create the mappings from ids to variables
    int n_real = real_ids.size(), n_int = int_ids.size();
    int fvar_index = 0;
    for (int i=0; i<n_real; i++)
        id_map[real_ids[i]] = fvar_index++;

    for (int i=0; i<n_int; i++) {
        int_map[int_ids[i]] = i;
        id_map[int_ids[i]] = fvar_index++;
    }

    // channel the decision variables
    for (int i=0; i<n_int; i++) {
	IntVar iv(*this, 0, 1);
        channel(*this, iv, fvars[id_map.at(int_ids[i])]);
        channel(*this, bvars[i], iv);
    }

    // create the negated decision variables
    for (int i=0; i<n_int; i++)
        rel(*this, bvars[i], IRT_NQ, nvars[i]);

    // post the SDD constratins
    for (int i=0, s=sum_args.size(); i<s; i++)
        post_sum_constraints(sum_args[i]);

    for (int i=0, s=prod_args.size(); i<s; i++)
        post_prod_constraints(prod_args[i]);

}

void SDDModel::post_sum_constraints(const ConstraintArgs& s)
{
    int id1, id2, id3, idz;
    BoolVarArgs bpos, bneg;
    Reify r_true, r_false;
    FloatVarArgs vars;
    FloatValArgs coefs;
    double rhs = 0;

    switch(s.arg_type) {
    case 1: //x1 is the index for a boolean variable, x2 is a double value
        id1 = int_map.at(s.x1);
        r_true = Reify(bvars[id1], RM_IMP),
        r_false = Reify(nvars[id1], RM_IMP);
        idz = id_map.at(s.z);
        switch(s.cons_type) {
        case 0: //x1  , x2
            // x1 = 1 => (z = 1)
            rel(*this, fvars[idz], FRT_EQ, 1.0, r_true);
            // x1 = 0 => (z = x2)
            rel(*this, fvars[idz], FRT_EQ, s.x2, r_false);
            break;
        case 1: //x1  , !x2
            // x1 = 1 => (z = 1)
            rel(*this, fvars[idz], FRT_EQ, 1.0, r_true);
            // x1 = 0 => (z = 1-x2)
            rel(*this, fvars[idz], FRT_EQ, 1-s.x2, r_false);
            break;
        case 2: //!x1 , x2
            // x1 = 1 => (z = x2)
            rel(*this, fvars[idz], FRT_EQ, s.x2, r_true);
            // x1 = 0 => (z = 1)
            rel(*this, fvars[idz], FRT_EQ, 1.0, r_false);
            break;
        case 3: //!x1 , !x2
            // x1 = 1 => (z = 1-x2)
            rel(*this, fvars[idz], FRT_EQ, 1-s.x2, r_true);
            // x1 = 0 => (z = 1)
            rel(*this, fvars[idz], FRT_EQ, 1.0, r_false);
            break;
        }
        break;
    case 2: //x1 and x2 are both indices of boolean variables
        id1 = int_map.at(s.x1);
        id2 = int_map.at(s.x2);
        id3 = int_map.at(s.z);
        switch(s.cons_type) {
        case 0: //x1  , x2
            // z = x1 \/ x2
            bpos << bvars[id1] << bvars[id2];
            break;
        case 1: //x1  , !x2
            // z = x1 \/ ~x2
            bpos << bvars[id1];
            bneg << bvars[id2];
        case 2: //!x1 , x2
            // z = ~x1 \/ x2
            bneg << bvars[id1];
            bpos << bvars[id2];
            break;
        case 3: //!x1 , !x2
            // z = ~x1 \/ ~x2
            bneg << bvars[id1] << bvars[id2];
            break;
        }
        clause(*this, BOT_OR, bpos, bneg, bvars[id3]);
        break;
    case 3: //x1 is the index of a float variable, x2 is a double value
        id1 = id_map.at(s.x1);
        idz = id_map.at(s.z);
        vars << fvars[idz] << fvars[id1];
        switch(s.cons_type) {
        case 0: //x1  , x2
            // z - x1 = x2
            coefs << 1 << -1;
            rhs = s.x2;
            break;
        case 1: //x1  , !x2
            // z - x1 = 1 - x2
            coefs << 1 << -1;
            rhs = 1 - s.x2;
            break;
        case 2: //!x1 , x2
            // z + x1 = 1 + x2
            coefs << 1 << 1;
            rhs = 1 + s.x2;
            break;
        case 3: //!x1 , !x2
            // z + x1 = 2 - x2
            coefs << 1 << 1;
            rhs = 2 - s.x2;
            break;
        }
        linear(*this, coefs, vars, FRT_EQ, rhs);
        break;
    case 4: //x1 and x2 are both indices of float variables
        id1 = id_map.at(s.x1);
        id2 = id_map.at(s.x2);
        idz = id_map.at(s.z);
        vars << fvars[idz] << fvars[id1] <<  fvars[id2];
        switch(s.cons_type) {
        case 0: //x1  , x2
            // z - x1 - x2 = 0
            coefs << 1 << -1 << -1;
            rhs = 0;
            break;
        case 1: //x1  , !x2
            // z - x1 + x2 = 1
            coefs << 1 << -1 << 1;
            rhs = 1;
            break;
        case 2: //!x1 , x2
            // z + x1 - x2 = 1
            coefs << 1 << 1 << -1;
            rhs = 1;
            break;
        case 3: //!x1 , !x2
            // z + x1 + x2 = 2
            coefs << 1 << 1 << 1;
            rhs = 2;
            break;
        }
        linear(*this, coefs, vars, FRT_EQ, rhs);
        break;
    case 5: //x1 is the index of a boolean variable and x2 is the index of a  float variables
        id1 = int_map.at(s.x1);
        id2 = id_map.at(s.x2);
        r_true = Reify(bvars[id1], RM_IMP),
        r_false = Reify(nvars[id1], RM_IMP);
        idz = id_map.at(s.z);
        switch(s.cons_type) {
        case 0: //x1  , x2
            // x1 = 1 => (z = 1)
            rel(*this, fvars[idz], FRT_EQ, 1.0, r_true);
            // x1 = 0 => (z = f[x2])
            rel(*this, fvars[idz], FRT_EQ, fvars[id2], r_false);
            break;
        case 1: //x1  , !x2
            // x1 = 1 => (z = 1)
            rel(*this, fvars[idz], FRT_EQ, 1.0, r_true);
            // x1 = 0 => (z = 1-f[x2])
            // x1 = 0 => (z + f[x2] = 1)
            vars << fvars[idz] << fvars[id2];
            linear(*this, vars, FRT_EQ, 1.0, r_false);
            break;
        case 2: //!x1 , x2
            // x1 = 1 => (z = f[x2])
            rel(*this, fvars[idz], FRT_EQ, fvars[id2], r_true);
            // x1 = 0 => (z = 1)
            rel(*this, fvars[idz], FRT_EQ, 1.0, r_false);
            break;
        case 3: //!x1 , !x2
            // x1 = 1 => (z = 1-f[x2])
            // x1 = 1 => (z + f[x2] = 1)
            vars << fvars[idz] << fvars[id2];
            linear(*this, vars, FRT_EQ, 1.0, r_true);
            // x1 = 0 => (z = 1)
            rel(*this, fvars[idz], FRT_EQ, 1.0, r_false);
            break;
        }
        break;
    case 6: //x1 and x2 are both double values
        switch(s.cons_type) {
        case 0: //x1  , x2
            rhs = s.x1 + s.x2;
            break;
        case 1: //x1  , !x2
            rhs = s.x1 + 1 - s.x2;
            break;
        case 2: //!x1 , x2
            rhs = 1 - s.x1 + s.x2;
            break;
        case 3: //!x1 , !x2
            rhs = 1 - s.x1 + 1 - s.x2;
            break;
        }
        idz = id_map.at(s.z);
        rel(*this, fvars[idz], FRT_EQ, rhs);
        break;
    }
}

void SDDModel::post_prod_constraints(const ConstraintArgs& p)
{
    int id1, id2, idz = id_map.at(p.z);
    FloatVarArgs vars;
    FloatValArgs coefs;
    double rhs = 0;
    FloatVar xx;
    switch(p.arg_type) {
    //x1 is an integer index, x2 is a double value
    case 1:
    case 3:
        id1 = id_map.at(p.x1);
        vars << fvars[idz] << fvars[id1];
        switch(p.cons_type) {
        case 0: // x1 , x2
            // z - x2(x1) = 0
            coefs << 1 << -p.x2;
            rhs = 0;
            break;
        case 1: // x1 , !x2
            // z - (1-x2)(x1) = 0
            coefs << 1 << -(1-p.x2);
            rhs = 0;
            break;
        case 2: // !x1 , x2
            // z+ (x2)(x1) = x2
            coefs << 1 << p.x2;
            rhs = p.x2;
            break;
        case 3: // !x1 , !x2
            // z + (1-x2)(x1) = 1-x2
            coefs << 1 << (1-p.x2);
            rhs = 1-p.x2;
            break;
        }
        linear(*this, coefs, vars, FRT_EQ, rhs);
        break;
    //x1 and x2 are both integer indices
    case 2:
    case 4:
    case 5:
        id1 = id_map.at(p.x1);
        id2 = id_map.at(p.x2);
        xx = FloatVar(*this, 0, 1);
        mult(*this, fvars[id1], fvars[id2], xx);
        switch(p.cons_type) {
        case 0: // x1 , x2
            // z - x1x2 = 0
            vars << fvars[idz] << xx;
            coefs << 1 << -1;
            rhs = 0;
            break;
        case 1: // x1 , !x2
            // z - x1 + x1x2 = 0
            vars << fvars[idz] << fvars[id1] << xx;
            coefs << 1 << -1 << 1;
            rhs = 0;
            break;
        case 2: // !x1 , x2
            // z - x2 + x1x2 = 0
            vars << fvars[idz] << fvars[id2] << xx;
            coefs << 1 << -1 << 1;
            rhs = 0;
            break;
        case 3: // !x1 , !x2
            // z + x1 + x2 - x1x2 = 1
            vars << fvars[idz] << fvars[id1] << fvars[id2] << xx;
            coefs << 1 << 1 << 1 << -1;
            rhs = 1;
            break;
        }
        linear(*this, coefs, vars, FRT_EQ, rhs);
        break;
    case 6: //x1 and x2 are both double values
        switch(p.cons_type) {
        case 0: //x1  , x2
            rel(*this, fvars[idz], FRT_EQ, p.x1*p.x2);
            break;
        case 1: //x1  , !x2
            rel(*this, fvars[idz], FRT_EQ, p.x1 * (1-p.x2));
            break;
        case 2: //!x1 , x2
            rel(*this, fvars[idz], FRT_EQ, (1-p.x1)*p.x2);
            break;
        case 3: //!x1 , !x2
            rel(*this, fvars[idz], FRT_EQ, (1-p.x1)*(1-p.x2));
            break;
        }
        break;
    }
}

void SDDModel::addConstraintProb(int id, bool ub, double threshold)
{
    if(ub)
        rel(*this, fvars[id_map.at(id)], FRT_LQ, threshold);
    else
        rel(*this, fvars[id_map.at(id)], FRT_GQ, threshold);
}

void SDDModel::addConstraintSumProb(vector< int > ids, bool ub, double threshold)
{
    FloatVarArgs vars;
    for(size_t i=0, s=ids.size(); i<s; i++)
        vars << fvars[id_map.at(ids[i])];
    if(ub)
        linear(*this, vars, FRT_LQ, threshold);
    else
        linear(*this, vars, FRT_GQ, threshold);
}

void SDDModel::addConstraintTheory(bool ub, int threshold)
{
    if(ub)
        linear(*this, bvars, IRT_LQ, threshold, static_cast<Gecode::IntPropLevel>(ipl()));
    else
        linear(*this, bvars, IRT_GQ, threshold, static_cast<Gecode::IntPropLevel>(ipl()));
}

vector< pair< int, bool > > SDDModel::getSolution()
{
    vector< pair< int, bool > > solution;
    for(int i=0, s=int_ids.size(); i<s; i++) {
        int id = int_map.at(int_ids[i]);
        bool value = static_cast<bool> (bvars[id].val());
        solution.push_back(make_pair(int_ids[i], value));
    }
    return solution;
}

ObjProbSolver::ObjProbSolver(const vector< int >& _int_ids,
                             const vector< int >& _real_ids,
                             const vector< ConstraintArgs >& _prod_args,
                             const vector< ConstraintArgs >& _sum_args,
                             int _obj_id, bool _maximize):
    SDDModel(_int_ids, _real_ids, _prod_args, _sum_args),
    ovar(*this, 0.0, 1.0),
    maximize(_maximize)
{
    rel(*this, fvars[id_map.at(_obj_id)], FRT_EQ, ovar);
}

ObjSumProbSolver::ObjSumProbSolver(const vector< int >& _int_ids,
                                   const vector< int >& _real_ids,
                                   const vector< ConstraintArgs >& _prod_args,
                                   const vector< ConstraintArgs >& _sum_args,
                                   vector< int > _obj_ids, bool _maximize):
    SDDModel(_int_ids, _real_ids, _prod_args, _sum_args),
    ovar(*this, 0.0, _obj_ids.size()),
    maximize(_maximize)
{
    FloatVarArgs v;
    for(size_t i=0, s=_obj_ids.size(); i<s; i++)
        v << fvars[id_map.at(_obj_ids[i])];
    linear(*this, v, FRT_EQ, ovar);
}

ObjTheorySolver::ObjTheorySolver(const vector< int >& _int_ids,
                                 const vector< int >& _real_ids,
                                 const vector< int >& _decs_ids,
                                 const vector< ConstraintArgs >& _prod_args,
                                 const vector< ConstraintArgs >& _sum_args,
                                 bool _maximize):
    SDDModel(_int_ids, _real_ids, _prod_args, _sum_args),
    ivar(*this, 0, _int_ids.size()), maximize(_maximize)
{
    BoolVarArgs v;
    for(size_t i=0, s=_decs_ids.size(); i<s; i++)
        v << bvars[int_map.at(_decs_ids[i])];
    linear(*this, v, IRT_EQ, ivar, static_cast<Gecode::IntPropLevel>(ipl()));
}

void SDDModel::setVarBranchingHeuristic(int var_branching_heuristic) 
{
    _var_branching_heuristic = var_branching_heuristic;
}

void SDDModel::setValBranchingHeuristic(int val_branching_heuristic) 
{
    _val_branching_heuristic = val_branching_heuristic;
}

void SDDModel::setDecay(double decay) 
{
    _decay = decay;
}

void SDDModel::setCD(int cd) 
{
    _cd = cd;
}

void SDDModel::setAD(int ad) 
{
    _ad = ad;
}

void SDDModel::setThreads(int threads) 
{
    _threads = threads;
}

void SDDModel::setIPL(int ipl) 
{
    _ipl = ipl;
}

void SDDModel::setSeed(int seed) 
{
    _seed = seed;
}

int SDDModel::varBranchingHeuristic(void) 
{
    return _var_branching_heuristic;
}

int SDDModel::valBranchingHeuristic(void) 
{
    return _val_branching_heuristic;
}

double SDDModel::decay(void) 
{
    return _decay;
}

int SDDModel::cd(void) 
{
    return _cd;
}

int SDDModel::ad(void) 
{
    return _ad;
}

int SDDModel::threads(void) 
{
    return _threads;
}

int SDDModel::ipl(void) 
{
    return _ipl;
}

int SDDModel::seed(void) 
{
    return _seed;
}

void SDDModel::setBranching(void)
{

    Gecode::Rnd randomness;
    randomness.seed(seed());

    if ( (varBranchingHeuristic() == 0) || (varBranchingHeuristic() >= 4) ) {
      if (valBranchingHeuristic() == 0) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(varBranchingHeuristic()), 
               BOOL_VAL_MIN());
      } else if (valBranchingHeuristic() == 1) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(varBranchingHeuristic()), 
               BOOL_VAL_MAX());
      } else if (valBranchingHeuristic() == 2) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(varBranchingHeuristic()), 
               BOOL_VAL_RND(randomness));
      }
    } else if (varBranchingHeuristic() == 1) {
      if (valBranchingHeuristic() == 0) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(varBranchingHeuristic(), randomness), 
               BOOL_VAL_MIN());
      } else if (valBranchingHeuristic() == 1) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(varBranchingHeuristic(), randomness), 
               BOOL_VAL_MAX());
      } else if (valBranchingHeuristic() == 2) {
        branch(*this, bvars, static_cast<Gecode::BoolVarBranch>(varBranchingHeuristic(), randomness), 
               BOOL_VAL_RND(randomness));
      }
    }
  // branch(*this, bvars, BOOL_VAR_NONE(), BOOL_VAL_MAX());
}