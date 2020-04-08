 

## CP decomposition pipeline (Gecode)

| param           | default         | opt (facebook)  | opt (high-voltage) |
| --------------- | --------------- | --------------- | ------------------ |
| GAC             | 1               | 0               | 0                  |
| branching       | lexicographical | smallest-degree | smallest-degree    |
| branching_value | 0               | 0               | 0                  |
| struct          | bdd             | bdd             | bdd                |
| dyn_minimize    | 1               | 1               | 1                  |
| dyn_converging  | 0               | 1               | 1                  |
| dyn_max_growth  | 1.2             | 1.48            | 1.2                |
| dyn_max_swaps   | 2000000         | 1937610         | 2405846            |
| dyn_max_vars    | 1000            | 121             | 1000               |
| dyn_reordering  | group-sift      | annealing       | group-sift         |
| minimize        | 0               | 1               | 1                  |
| a_d             | 2               | 1               | 1                  |
| c_d             | 8               | 15              | 8                  |
| ipl             | def             | N/A             | basic              |
| ipl_hybrid      | 0               | 1               | 0                  |
| threads         | 1               | 3               | 5                  |

<!— 

-GAC '1' -a_d '2' -branching 'lexicographical' -branching_value '0' -c_d '8' -dyn_converging '0' -dyn_max_growth '1.2' -dyn_max_swaps '2000000' -dyn_max_vars '1000' -dyn_minimize '1' -dyn_reordering 'group-sift' -ipl 'def' -ipl_hybrid '0' -minimize '0' -struct 'bdd' -threads '1'

-GAC '0' -a_d '1' -branching 'smallest-degree' -branching_value '0' -c_d '15' -dyn_converging '1' -dyn_max_growth '1.481149361880482' -dyn_max_swaps '1937610' -dyn_max_vars '121' -dyn_minimize '1' -dyn_reordering 'sift' -dyn_symmetric '1' -ipl_hybrid '1' -minimize '1' -reordering 'annealing' -struct 'bdd' -threads '3'

-GAC '1' -a_d '1' -branching 'smallest-degree' -branching_value '1' -c_d '8' -dyn_converging '0' -dyn_max_growth '1.2' -dyn_max_swaps '2405846' -dyn_max_vars '1000' -dyn_minimize '1' -dyn_reordering 'group-sift' -ipl 'basic' -ipl_hybrid '0' -minimize '1' -reordering 'random' -struct 'bdd' -threads '5' 

—>

## MIP decomposition pipeline (Gurobi)

| param                         | default    | opt (facebook) | opt (high-voltage) |
| ----------------------------- | ---------- | -------------- | ------------------ |
| dyn_minimize                  | 1          | 1              | 1                  |
| dyn_converging                | 0          | 0              | 0                  |
| dyn_max_growth                | 1.2        | 1.2            | 1.2                |
| dyn_max_swaps                 | 2000000    | 2000000        | 2077960            |
| dyn_max_vars                  | 1000       | 1000           | 1000               |
| dyn_reordering                | group-sift | group-sift     | group-sift         |
| minimize                      | 0          | 1              | 0                  |
| reordering                    | N/A        | annealing      | N/A                |
| sifting                       | N/A        | 1              | N/A                |
| siftmethod                    | N/A        | 0              | 0                  |
| aggfill                       | N/A        | 1258           | 1950               |
| aggregate                     | 1          | 1              | 0                  |
| auto_aggfill_on               | 1          | 0              | 0                  |
| auto_barcorrectors            | 1          | 0              | 0                  |
| auto_barhomogeneous           | 1          | 0              | 0                  |
| auto_barorder                 | 1          | 1              | 1                  |
| auto_bqpcuts_on               | 1          | 0              | 0                  |
| auto_branchdir_on             | 1          | 0              | 1                  |
| auto_cliquecuts_on            | 1          | 1              | 1                  |
| auto_covercuts_on             | 1          | 0              | 1                  |
| auto_crossover                | 1          | 1              | 0                  |
| auto_cutaggpasses_on          | 1          | 1              | 1                  |
| auto_cutpasses_on             | 1          | 0              | 0                  |
| auto_cuts_on                  | 1          | 0              | 1                  |
| auto_degenmoves_on            | 1          | 0              | 1                  |
| auto_disconnected_on          | 1          | 1              | 1                  |
| auto_flowcovercuts_on         | 1          | 0              | 1                  |
| auto_flowpathcuts_on          | 1          | 1              | 0                  |
| auto_gomorypasses_on          | 1          | 0              | 1                  |
| auto_gubcovercuts_on          | 1          | 0              | 1                  |
| auto_impliedcuts_on           | 1          | 1              | 1                  |
| auto_infproofcuts_on          | 1          | 0              | 1                  |
| auto_issmethod_on             | 1          | 1              | 0                  |
| auto_minrelnodes_on           | 1          | 0              | 1                  |
| auto_mipsepcuts_on            | 1          | 0              | 0                  |
| auto_mircuts_on               | 1          | 1              | 1                  |
| auto_modkcuts_on              | 1          | 1              | 0                  |
| auto_networkcuts_on           | 1          | 0              | 0                  |
| auto_nodemethod_on            | 1          | 0              | 1                  |
| auto_normadjust_on            | 1          | 0              | 1                  |
| auto_predual_on               | 1          | 1              | 0                  |
| auto_prepasses_on             | 1          | 0              | 1                  |
| auto_presolve_on              | 1          | 1              | 1                  |
| auto_presparsify_on           | 1          | 1              | 0                  |
| auto_projimpliedcuts_on       | 1          | 0              | 1                  |
| auto_pumppasses_on            | 1          | 0              | 0                  |
| auto_quad_on                  | 1          | 1              | 0                  |
| auto_relaxliftcuts_on         | 1          | 1              | 1                  |
| auto_rins_on                  | 1          | 0              | 1                  |
| auto_rltcuts_on               | 1          | 0              | 0                  |
| auto_sifting_on               | 1          | 0              | 1                  |
| auto_siftmethod_on            | 1          | 0              | 0                  |
| auto_simplexpricing_on        | 1          | 0              | 0                  |
| auto_startnodelimit           | 1          | 1              | 0                  |
| auto_strongcgcuts_on          | 1          | 0              | 1                  |
| auto_submipcuts_on            | 1          | 1              | 1                  |
| auto_symmetry_on              | 1          | 1              | 0                  |
| auto_threads_on               | 1          | 0              | 0                  |
| auto_varbranch_on             | 1          | 1              | 1                  |
| auto_zerohalfcuts_on          | 1          | 0              | 0                  |
| auto_zeroobjnodes_on          | 1          | 0              | 0                  |
| barcorrectors                 | N/A        | 431499         | 1000000            |
| barhomogeneous                | N/A        | 0              | 0                  |
| bqpcuts                       | N/A        | 1              | 2                  |
| branchdir                     | N/A        | 1              | N/A                |
| covercuts                     | N/A        | 0              | N/A                |
| crossover                     | N/A        | N/A            | 0                  |
| crossoverbasis                | 1          | 1              | 0                  |
| cutpasses                     | N/A        | 2              | 1                  |
| degenmoves                    | N/A        | 1000000        | N/A                |
| dualreductions                | 1          | 0              | 0                  |
| flowcovercuts                 | N/A        | 1              | N/A                |
| flowpathcuts                  | N/A        | N/A            | 0                  |
| gomorypasses                  | N/A        | 5              | N/A                |
| gubcovercuts                  | N/A        | 1              | 0                  |
| heuristics                    | 0.05       | 0.03257        | 0.44569            |
| improvestartgap               | 0.01       | 0.8862         | 0.0188             |
| improvestartnodes             | 2000000.0  | 732789.9       | 1905577.3          |
| improvestarttime              | 1.0        | 282.8          | 72.1               |
| infproofcuts                  | N/A        | 1              | N/A                |
| infunbdinfo                   | 0          | 1              | 0                  |
| issmethod                     | N/A        | N/A            | 0                  |
| minrelnodes                   | N/A        | 1433331        | N/A                |
| mipfocus                      | 0          | 2              | 2                  |
| mipsepcuts                    | N/A        | 1              | 0                  |
| modkcuts                      | N/A        | N/A            | 2                  |
| networkcuts                   | N/A        | 0              | 1                  |
| nodemethod                    | N/A        | 1              | N/A                |
| normadjust                    | N/A        | 0              | N/A                |
| partitionplace                | 15         | 22             | 18                 |
| perturbvalue                  | 2.0000E-4  | 2.9746E-4      | 5.4936E-5          |
| precrush                      | 0          | 1              | 1                  |
| predeprow                     | 1          | 1              | 0                  |
| predual                       | N/A        | N/A            | 1                  |
| prepasses                     | N/A        | 2              | N/A                |
| presparsify                   | N/A        | N/A            | 1                  |
| projimpliedcuts               | N/A        | 1              | N/A                |
| pumppasses                    | N/A        | 18             | 17                 |
| quad                          | N/A        | N/A            | 1                  |
| rins                          | N/A        | 11             | N/A                |
| rltcuts                       | N/A        | 1              | 2                  |
| shut_off_mip_start_processing | 0          | 0              | 0                  |
| simplexpricing                | N/A        | 0              | 2                  |
| stattnodelimit                | N/A        | N/A            | 585359             |
| strongcgcuts                  | N/A        | 2              | N/A                |
| submipnodes                   | 500        | 353            | 1373               |
| symmetry                      | N/A        | N/A            | 1                  |
| threads                       | N/A        | 2              | 2                  |
| zerohalfcuts                  | N/A        | 1              | 1                  |
| zeroobjnodes                  | N/A        | N/A            | 1000000            |

<!—

-aggregate '1' -auto_aggfill_on '1' -auto_barcorrectors '1' -auto_barhomogeneous '1' -auto_barorder '1' -auto_bqpcuts_on '1' -auto_branchdir_on '1' -auto_cliquecuts_on '1' -auto_covercuts_on '1' -auto_crossover '1' -auto_cutaggpasses_on '1' -auto_cutpasses_on '1' -auto_cuts_on '1' -auto_degenmoves_on '1' -auto_disconnected_on '1' -auto_flowcovercuts_on '1' -auto_flowpathcuts_on '1' -auto_gomorypasses_on '1' -auto_gubcovercuts_on '1' -auto_impliedcuts_on '1' -auto_infproofcuts_on '1' -auto_issmethod_on '1' -auto_minrelnodes_on '1' -auto_mipsepcuts_on '1' -auto_mircuts_on '1' -auto_modkcuts_on '1' -auto_networkcuts_on '1' -auto_nodemethod_on '1' -auto_normadjust_on '1' -auto_predual_on '1' -auto_prepasses_on '1' -auto_presolve_on '1' -auto_presparsify_on '1' -auto_projimpliedcuts_on '1' -auto_pumppasses_on '1' -auto_quad_on '1' -auto_relaxliftcuts_on '1' -auto_rins_on '1' -auto_rltcuts_on '1' -auto_sifting_on '1' -auto_siftmethod_on '1' -auto_simplexpricing_on '1' -auto_startnodelimit '1' -auto_strongcgcuts_on '1' -auto_submipcuts_on '1' -auto_symmetry_on '1' -auto_threads_on '1' -auto_varbranch_on '1' -auto_zerohalfcuts_on '1' -auto_zeroobjnodes_on '1' -crossoverbasis '0' -dualreductions '1' -dyn_converging '0' -dyn_max_growth '1.2' -dyn_max_swaps '2000000' -dyn_max_vars '1000' -dyn_minimize '1' -dyn_reordering 'group-sift' -heuristics '0.049999999999999996' -improvestartgap '0.01' -improvestartnodes '2000000.0' -improvestarttime '1.0' -infunbdinfo '0' -minimize '0' -mipfocus '0' -partitionplace '15' -perturbvalue '2.0000000000000004E-4' -precrush '0' -predeprow '1' -shut_off_mip_start_processing '0' -struct 'bdd' -submipnodes '500'

-aggfill '1258' -aggregate '1' -auto_aggfill_on '0' -auto_barcorrectors '0' -auto_barhomogeneous '0' -auto_barorder '1' -auto_bqpcuts_on '0' -auto_branchdir_on '0' -auto_cliquecuts_on '1' -auto_covercuts_on '0' -auto_crossover '1' -auto_cutaggpasses_on '1' -auto_cutpasses_on '0' -auto_cuts_on '0' -auto_degenmoves_on '0' -auto_disconnected_on '1' -auto_flowcovercuts_on '0' -auto_flowpathcuts_on '1' -auto_gomorypasses_on '0' -auto_gubcovercuts_on '0' -auto_impliedcuts_on '1' -auto_infproofcuts_on '0' -auto_issmethod_on '1' -auto_minrelnodes_on '0' -auto_mipsepcuts_on '0' -auto_mircuts_on '1' -auto_modkcuts_on '1' -auto_networkcuts_on '0' -auto_nodemethod_on '0' -auto_normadjust_on '0' -auto_predual_on '1' -auto_prepasses_on '0' -auto_presolve_on '1' -auto_presparsify_on '1' -auto_projimpliedcuts_on '0' -auto_pumppasses_on '0' -auto_quad_on '1' -auto_relaxliftcuts_on '1' -auto_rins_on '0' -auto_rltcuts_on '0' -auto_sifting_on '0' -auto_siftmethod_on '0' -auto_simplexpricing_on '0' -auto_startnodelimit '1' -auto_strongcgcuts_on '0' -auto_submipcuts_on '1' -auto_symmetry_on '1' -auto_threads_on '0' -auto_varbranch_on '1' -auto_zerohalfcuts_on '0' -auto_zeroobjnodes_on '1' -barcorrectors '431499' -barhomogeneous '0' -bqpcuts '1' -branchdir '-1' -covercuts '0' -crossoverbasis '1' -cutpasses '2' -cuts '2' -degenmoves '1000000' -dualreductions '0' -dyn_converging '0' -dyn_max_growth '1.2' -dyn_max_swaps '2000000' -dyn_max_vars '1000' -dyn_minimize '1' -dyn_reordering 'group-sift' -flowcovercuts '1' -gomorypasses '5' -gubcovercuts '1' -heuristics '0.03257381157608507' -improvestartgap '0.8862073136209041' -improvestartnodes '732789.926836769' -improvestarttime '282.83260036726716' -infproofcuts '1' -infunbdinfo '1' -minimize '1' -minrelnodes '1433331' -mipfocus '2' -mipsepcuts '1' -networkcuts '0' -nodemethod '1' -normadjust '0' -partitionplace '22' -perturbvalue '2.974629973384552E-4' -precrush '1' -predeprow '1' -prepasses '2' -projimpliedcuts '1' -pumppasses '18' -reordering 'annealing' -rins '11' -rltcuts '1' -shut_off_mip_start_processing '0' -sifting '1' -siftmethod '0' -simplexpricing '0' -strongcgcuts '2' -struct 'bdd' -submipnodes '353' -threads '2' -zerohalfcuts '1'

-aggfill '1950' -aggregate '0' -auto_aggfill_on '0' -auto_barcorrectors '0' -auto_barhomogeneous '0' -auto_barorder '1' -auto_bqpcuts_on '0' -auto_branchdir_on '1' -auto_cliquecuts_on '1' -auto_covercuts_on '1' -auto_crossover '0' -auto_cutaggpasses_on '1' -auto_cutpasses_on '0' -auto_cuts_on '1' -auto_degenmoves_on '1' -auto_disconnected_on '1' -auto_flowcovercuts_on '1' -auto_flowpathcuts_on '0' -auto_gomorypasses_on '1' -auto_gubcovercuts_on '0' -auto_impliedcuts_on '1' -auto_infproofcuts_on '1' -auto_issmethod_on '0' -auto_minrelnodes_on '1' -auto_mipsepcuts_on '0' -auto_mircuts_on '1' -auto_modkcuts_on '0' -auto_networkcuts_on '0' -auto_nodemethod_on '1' -auto_normadjust_on '1' -auto_predual_on '0' -auto_prepasses_on '1' -auto_presolve_on '1' -auto_presparsify_on '0' -auto_projimpliedcuts_on '1' -auto_pumppasses_on '0' -auto_quad_on '0' -auto_relaxliftcuts_on '1' -auto_rins_on '1' -auto_rltcuts_on '0' -auto_sifting_on '1' -auto_siftmethod_on '0' -auto_simplexpricing_on '0' -auto_startnodelimit '0' -auto_strongcgcuts_on '1' -auto_submipcuts_on '1' -auto_symmetry_on '0' -auto_threads_on '0' -auto_varbranch_on '1' -auto_zerohalfcuts_on '0' -auto_zeroobjnodes_on '0' -barcorrectors '1000000' -barhomogeneous '0' -bqpcuts '2' -crossover '0' -crossoverbasis '0' -cutpasses '1' -dualreductions '0' -dyn_converging '0' -dyn_max_growth '1.2' -dyn_max_swaps '2077960' -dyn_max_vars '1000' -dyn_minimize '1' -dyn_reordering 'group-sift' -flowpathcuts '0' -gubcovercuts '0' -heuristics '0.44568993195574635' -improvestartgap '0.018753885172694825' -improvestartnodes '1905577.2913263722' -improvestarttime '72.10223241560999' -infunbdinfo '0' -issmethod '0' -minimize '0' -mipfocus '2' -mipsepcuts '0' -modkcuts '2' -networkcuts '1' -partitionplace '18' -perturbvalue '5.4936355522997635E-5' -precrush '1' -predeprow '0' -predual '1' -presparsify '1' -pumppasses '17' -quad '1' -rltcuts '2' -shut_off_mip_start_processing '0' -siftmethod '0' -simplexpricing '2' -startnodelimit '585359' -struct 'bdd' -submipnodes '1373' -symmetry '1' -threads '2' -zerohalfcuts '1' -zeroobjnodes '1000000'

—>

## CP global propagation pipeline (OscaR)

| param           | default    | opt (facebook) | opt (high-voltage) |
| --------------- | ---------- | -------------- | ------------------ |
| sweep           | full       | full           | full               |
| branching       | derivative | derivative     | derivative         |
| branching_value | 1          | 1              | 1                  |
| struct          | bdd        | bdd            | bdd                |
| dyn_minimize    | 1          | 1              | 1                  |
| dyn_converging  | 0          | 1              | 1                  |
| dyn_max_growth  | 1.2        | 1.23           | 1.30               |
| dyn_max_swaps   | 2000000    | 1188847        | 2417389            |
| dyn_max_vars    | 1000       | 1177           | 3000               |
| dyn_reordering  | group-sift | group-sift     | group-sift         |
| minimize        | 0          | 1              | 1                  |
| converging      | N/A        | 0              | 1                  |
| max_growth      | N/A        | 1.2            | N/A                |
| max_swaps       | N/A        | 1938774        | N/A                |
| max_vars        | N/A        | 2210           | N/A                |
| reordering      | N/A        | group-sift     | window             |
| window_size     | N/A        | N/A            | 3                  |

<!—

-branch_value '1' -branching 'derivative' -dyn_converging '0' -dyn_max_growth '1.2' -dyn_max_swaps '2000000' -dyn_max_vars '1000' -dyn_minimize '1' -dyn_reordering 'group-sift' -minimize '0' -prop_version 'lin'

-branch_value '1' -branching 'derivative' -converging '0' -dyn_converging '1' -dyn_max_growth '1.2337923552998435' -dyn_max_swaps '1188847' -dyn_max_vars '1177' -dyn_minimize '1' -dyn_reordering 'group-sift' -max_growth '1.2' -max_swaps '1938774' -max_vars '2210' -minimize '1' -prop_version 'lin' -reordering 'group-sift'

-branch_value '1' -branching 'derivative' -converging '1' -dyn_converging '1' -dyn_max_growth '1.2956511684202172' -dyn_max_swaps '2417389' -dyn_max_vars '3000' -dyn_minimize '1' -dyn_reordering 'group-sift' -minimize '1' -prop_version 'lin' -reordering 'window' -window_size '3'

—>