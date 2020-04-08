/****************************************************************************************
 * The Sentential Decision Diagram Package
 * sdd version 1.1.1, January 31, 2014
 * http://reasoning.cs.ucla.edu/sdd
 * 
 * The code in this file is based on the search.c file of the sdd package. It includes a 
 * modification to the standard search algorithm of the sdd package, such that it becomes 
 * an SMP property preserving search algorithm. 
 * 
 * This is part of the SC-ProbLog modifications made to the sdd package.
 * 
 * SC-ProbLog modifications: Copyright 2017 KU Leuven, DTAI Research Group;
 * UC Louvain, ICTEAM; and Leiden University, LIACS
 * Configurable SC-ProbLog modifications: Copyright 2020 KU Leuven, DTAI 
 * Research Group; UC Louvain, ICTEAM; and Leiden University, LIACS
 * 
 * Licensed under the Apache License (https://github.com/latower/SCPMD-solving/blob/master/LICENSES/LICENSE_SC_PROBLOG).
 ****************************************************************************************/

/****************************************************************************************
 * MIP Search Function
 ****************************************************************************************/

#ifndef MIPSEARCH_H_
#define MIPSEARCH_H_
#include "sddapi.h"

/****************************************************************************************
 * parameter tuning functionality
 ****************************************************************************************/
extern float dynamic_vtree_convergence_threshold;
extern SddSize time_limit_lr;
extern SddSize time_limit_rr;
extern SddSize time_limit_sw;
extern float size_limit_lr;
extern float size_limit_rr;
extern float size_limit_sw;
extern int cartesian_product_limit_rr;
extern int cartesian_product_limit_sw;


void sdd_manager_set_mip_minimize(SddManager* manager);

void sdd_manager_add_var_after_last_withtype(SddManager* manager, int b);

void sdd_manager_mip_minimize ( SddManager *manager );

void sdd_manager_init_parameters(SddManager *manager);
void sdd_manager_manually_set_lr_time_limit(SddSize time_limit, SddManager *manager);

#endif
 
