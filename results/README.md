 

# Experimental Results

For a description of the test problems on which we have performed the experiments and the license information of the datasets we used, see TODO.

All figures in this directory show the strictness of the linear constraint on the cardinality of the solution (the number of positive decisions) on the horizontal axes, and the wall-clock solving time in seconds (figures suffixed with `t`) or user time in CPU s (figures suffixed with `ut`) on the vertical axis. Timeout in all experiments is 3600 seconds (1 hour).

Some of the figures contain dummy frames to help with the layout.

## CP comparison

We compare the performance of the following methods:

- decomposition *without* guarantees on Generalised Arc Consistency (GAC), solved by CP solver `Gecode`;
- decomposition *with* guarantees on Generalised Arc Consistency (GAC), solved by CP solver `Gecode`;
- full-sweep global SCMD propagation algorithm, implemented in CP solver `OscaR`;
- partial-sweep global SCMD propagation algorithm, implemented in CP solver `OscaR`.

As input for these methods we use dynamically minimised OBDDs. For all these methods we use a fixed, lexicographical branching order, for each decision variable branching first on `false` and then on `true`. Otherwise we use default settings.

We provide the results that were published in our paper in `cp-comparison-paper-t.pdf`. We provide additional results in `cp-comparison-paper-ut.pdf`, `cp-comparison-all-t.pdf` and `cp-comparison-all-ut.pdf`.

## MIP comparison

We compare the performance of the following methods:

- an OBDD-to-MIP decomposition approach, solved by MIP solver `Gurobi`;
- an SDD-to-MIP decomposition approach, solved by MIP solver `Gurobi` (not presented in the paper);
- full-sweep global SCMD propagation algorithm, implemented in CP solver `OscaR`;
- partial-sweep global SCMD propagation algorithm, implemented in CP solver `OscaR`.

As input for these methods we use dynamically minimised OBDDs. For the MIP-based approaches, we use `Gurobi`'s default settings. For the global SCMD algorithms, we use branching order *Derivative-1*.

We provide the results that were published in our paper in `mip-comparison-paper-t.pdf`. We provide additional results in `mip-comparison-paper-ut.pdf`, `mip-comparison-all-t.pdf` and `mip-comparison-all-ut.pdf`.

## Scaling Comparison

Since our SCMD propagation algorithm traverses the same search tree independent of OBDD size or shape, we performed a comparison of its performance on big (non-minimised) OBDDs and on dynamically minimised ones, to see if its solving time indeed scales linearly with OBDD size.

We compare how the full-sweep and partial-sweep SCMD propagation algorithms scale with OBDD size to how well the MIP-based decomposition method scales.

Specifically, we compare:

- an OBDD-to-MIP decomposition approach, solved by MIP solver `Gurobi`;
- full-sweep global SCMD propagation algorithm, implemented in CP solver `OscaR`;
- partial-sweep global SCMD propagation algorithm, implemented in CP solver `OscaR`.

on dynamically minimised and non-minimised OBDDs. Default settings for `Gurobi`. For the global SCMD algorithms, we use branching order *Derivative-1*.

We provide the results that were published in our paper in `scaling-with-full-paper-t.pdf`.  We provide additional results in `scaling-with-full-paper-ut.pdf`, `scaling-all-t.pdf` and `scaling-all-ut.pdf`.

Additionally, we provide some results on how the full-sweep and partial-sweep algorithm scale with size for different branching heuristics, in `scaling-dev1-top0-oscar.pdf`

## Configuration

We present results for the configuration experiments in the figures `gecode-configuration.pdf`, `gurobi-configuration.pdf` and `oscar-configuration.pdf`. These results correspond to table 7 in our paper. Note that, unlike the results described above, these results are for the full pipelines: compilation phase and solving phase. The `gecode` and `gurobi` pipelines share the same configuration space for the compilation phase, as they may both use either OBDDs or SDDs to encode the probability distributions. The `oscar` pipeline only uses OBDDs.

We present the corresponding configurations in `configurations.md`.

## Generalisation of configuration results

We present results for the generalisation of our configuration results in `config-generalisation-hardest.pdf` and `config-generalisation-52.pdf`. These results correspond to table 8 in our paper.

