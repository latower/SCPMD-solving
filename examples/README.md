## Minimal working examples of the three pipelines

In this directory we share a few minimal working examples to run our solving pipelines. Make sure that you have installed the software mentioned [here](https://github.com/latower/SCPMD-solving/blob/master/README.md). 

The `cp_decomposition_pipeline.py` and `mip_decomposition_pipeline.py` files each solve an example problem first by decomposing a stochastic constraint on an OBDD encoding of the probability distributions, and then by decomposing a stochastic constraint on an SDD encoding of those distributions. The `global_scmd_propagator_pipeline.py` file demonstrates how to solve an stochastic constraint on an OBDD representation of probability distributions, using the global SCMD propagator.

