# Dataset descriptions

We have defined _spread of influence_ problems on communities extracted from a dataset of Facebook wall interactions from [Online Social Networks Research @ MPI-SWS](http://socialnetworks.mpi-sws.org/data-wosn2009.html)
> B. Viswanath, A. Mislove, M. Cha and K. P. Gummadi. On the Evolution of User Interaction in Facebook. ACM SIGCOMM Workshop on Social Networks. 2009.

This dataset is licensed under the Creative Commons Attribution-ShareAlike 2.0 Germany License, see [./LICENSE_Facebook](https://github.com/danielbfokkinga/configurable-SCOP/blob/master/LICENCES/LICENSE_Facebook)). 

For our _power grid reliability_ problems, we use state- and country-based connected components of high-voltage power grids extracted from [GridKit](https://zenodo.org/record/47317#.XUBJIFyZZhH).
> Wiegmans, B. (2016). GridKit: European and North-American extracts [Data set]. Zenodo. http://doi.org/10.5281/zenodo.47317

We thank Roger Paredes and Leonardo Dueñas-Osorio for their advice regarding the formulation of power grid reliablity and the interpretation of the power grid data.

These data are licensed under the Open Database License, version 1.0, see [./LICENSE_GridKit](https://github.com/danielbfokkinga/configurable-SCOP/blob/master/LICENCES/LICENSE_GridKit)). 

We provide the examples used during the initial experiments in Section 7 of our paper, as well as the examples used for the configuration experiment in Section 9.

We have created [ProbLog](https://dtai.cs.kuleuven.be/problog/) input files out of these datasets. They contain the logic for the probability distributions and the queries for the set of interest. The ProbLog files for the initial experiments do not contain a threshold $k$ for the linear constraint on the cardinality of the solution. The ProbLog files for the configuration experiments have an extra line at the start of the file that indicates the $k$ used in the configuration experiments. For those experiments, we also provide graph files that can be used to compute values needed for some of the branching heuristics in our experiments.

For more information on how to model these problems, see [this repository](https://github.com/latower/SCMD/).