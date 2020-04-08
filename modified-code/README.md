# Modified code 

In this subdirectory, we provide some of the modification to code that we made in order to perform our experiments.

## SC-ProbLog

We use [SC-ProbLog](https://github.com/ML-KULeuven/problog/tree/sc-problog) to model our probability distributions. We have modified the SMP-preserving SDD compiler such that it can be configured. This compiler is built on the [SDD 1.0 package](http://reasoning.cs.ucla.edu/sdd/). The SMP-preserving compiler is from

> _Combining Stochastic Constraint Optimization and Probabilistic Programming_. A.L.D. Latour, B. Babaki, and S. Nijssen, CP 2017. 

We include the files modified by us for this project, which you need to add to your version of SC-ProbLog, in  the `sc-problog ` subdirectory.

## Configurable SDD-decomposition

We adapted the SDD-decomposition code for modelling SCPMDs with SDDs and solving them with Gecode from

> _Combining Stochastic Constraint Optimization and Probabilistic Programming_. A.L.D. Latour, B. Babaki, and S. Nijssen, CP 2017. 

to make it configurable. We include the Gecode-specific files modified by us for this project in  the `configurable-SDD-decomposition ` subdirectory. 

## Configurable OBDD-decomposition

We adapted the OBDD-decomposition code for modelling SCPMDs with OBDDs and solving them with Gecode from

> _Stochastic Constraint Propagation for Mining Probabilistic Networks_.  A.L.D. Latour, B. Babaki, and S. Nijssen, IJCAI 2019. 

to make it configurable. We include the Gecode-specific files modified by us for this project in  the `configurable-OBDD-decomposition ` subdirectory. This includes the functionality we created earlier for

> _Stochastic Constraint Propagation for Mining Probabilistic Networks_.  A.L.D. Latour, B. Babaki, and S. Nijssen, IJCAI 2019. 

for modelling SCMDs with OBDDs instead of SDDs.

## Domain consistent configurable OBDD-decomposition

We adapted the OBDD-decomposition code for modelling SCPMDs with OBDDs and solving them with Gecode using an encoding that guarantees Generalised Arc Consistency (GAC) from

> _Stochastic Constraint Propagation for Mining Probabilistic Networks_.  A.L.D. Latour, B. Babaki, and S. Nijssen, IJCAI 2019. 

to make it configurable. We include the Gecode-specific files modified by us for this project in  the `configurable-GAC-OBDD-decomposition ` subdirectory. 

## Builders

In order to convert ProbLog programs into OBDDs and SDDs, and to convert those into Constraint Programs or Mixed-Integer Programs, we have adapted a number of ‘builders’ from the ones created for 

> _Combining Stochastic Constraint Optimization and Probabilistic Programming_. A.L.D. Latour, B. Babaki, and S. Nijssen, CP 2017. 

and

>_Stochastic Constraint Propagation for Mining Probabilistic Networks_.  A.L.D. Latour, B. Babaki, and S. Nijssen, IJCAI 2019. 

They can be found in the `builders` subdirectory. They are mostly left unmodified, but we’re including them here for completeness.

