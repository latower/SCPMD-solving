# SCPMD-solving

Scripts, benchmarks, and data related to the following paper, submitted to the [Artificial Intelligence journal](https://www.journals.elsevier.com/artificial-intelligence) in April 2020 and accepted on 4 December 2021:

[_Stochastic Constraint Propagation for Mining Probabilistic Networks_, by Anna L.D. Latour, Behrouz Babaki, Daniël Fokkinga, Marie Anastacio, Holger Hoos, and Siegfried Nijssen.](https://authors.elsevier.com/sd/article/S0004-3702(21)00201-0)

## Contents of this repository

- `benchmarks`: ProbLog files of the example problems used in our experiments;
- `modified-code`: code from earlier projects that we have modified for this one;
- `examples`: scripts with minimal working examples of the three SCMD solving pipelines described in our paper;
- `configuration`: parameter files, scripts and scenario files we used for configuration experiments;
- `results`: experimental results as presented in the paper, and some extra results for which there was no room;
- `LICENSES`: the different licenses for the datasets we use, and for the code in this repository.

## Prerequisites and dependencies

You need the following pieces of software for building and running the code in this repository:

- [SC-ProbLog](https://github.com/ML-KULeuven/problog/tree/sc-problog)
- [dd](https://github.com/tulip-control/dd) with [CUDD](http://web.mit.edu/sage/export/tmp/y/usr/share/doc/polybori/cudd/cuddIntro.html) binding
- [SCMD solver 1.3](https://github.com/latower/SCMD)
- [Gecode](https://www.gecode.org)
- [Gurobi](https://www.gurobi.com)
- [SMAC](https://www.automl.org/automated-algorithm-design/algorithm-configuration/smac/)

## Disclaimer

The content of this repository is research code and primarily for the purpose of documentation. We provide example scripts to help future researchers build on our work, but a significant part of the code is not cleaned up or extensively tested.

## More information

Please contact us if you are looking for the following files:

- scripts for generating OBDDs from ProbLog programs, including alternative minimisation techniques;

- scripts for the preprocessing required for the alternative branching heuristics;

- scripts for running our initial experiments;

- scripts for running our configuration experiments.

Or if you have any other questions about the contents of this repository or the paper mentioned above.

## License

We build on the propagation algorithm for Stochastic Constraints on Monotonic Distributions (SCMD) in [./SCMD-propagator/src/main/scala/](https://github.com/danielbfokkinga/configurable-SCOP/tree/master/SCMD-propagator/src/main/scala) licensed under [MIT](https://github.com/latower/SCMD/blob/master/LICENSE), and an [earlier configurable version](https://github.com/danielbfokkinga/configurable-SCOP) of this algorithm, licensed under [MIT](https://github.com/danielbfokkinga/configurable-SCOP/blob/master/LICENCES/LICENSE). We have also adapted code from [SC-ProbLog](https://github.com/ML-KULeuven/problog/tree/sc-problog), licensed under [Apache v2.0](https://github.com/latower/SCPMD-solving/blob/master/LICENSES/LICENSE_SC_PROBLOG). We make the resulting code available under [MIT](https://github.com/latower/SCPMD-solving/blob/master/LICENSES/LICENSE). Finally, we present benchmark problems with their own [licenses](https://github.com/latower/SCPMD-solving/blob/master/LICENSES).

## Contributors

The code in this repository was written by

- Anna Latour ([@latower](https://github.com/latower))
- Behrouz Babaki ([@Behrouz-Babaki](https://github.com/Behrouz-Babaki))
- Siegfried Nijssen ([@siegfriednijssen](https://github.com/siegfriednijssen))
- Daniël Fokkinga ([@danielbfokkinga](https://github.com/danielbfokkinga))
