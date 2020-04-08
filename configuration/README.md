 ## Configuration

The files in this subdirectory are primarily intended as documentation of the configuration space we used for our experiments. They are not intended for anyone to download and rerun our experiments with one click of their mouse. Rather, we want to help future researchers working on similar experiments make decision on how they define the configuration spaces in their experiments.

The `scenarios` subdirectory contains information on how we split the training sets and test sets for the configuration experiments, what we optimise (PAR10 of running time), the cutoff time used in our experiments, etcetera.

The `runners` subdirectory contains the `params.pcs` files and `run_gecode.py`, `run_gurobi.py` and  `run_oscar.py` files, which together define the parameters, their domains and their defaults used in our experiments. 



