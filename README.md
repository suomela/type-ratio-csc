TypeRatio on CSC
================

This repository contains scripts for running the [TypeRatio](https://github.com/suomela/type-ratio) tool on [CSC](https://www.csc.fi) computers.

Usage on CSC Puhti
------------------

Preparing:

    cd /projappl/PROJECT
    git clone https://github.com/suomela/type-ratio-csc
    cd type-ratio-csc
    ./build.sh PROJECT TOTAL

Here `PROJECT` is the CSC project name, and `TOTAL` is the total number of jobs you would like to use to run TypeRatio.

This will create in a batch file called `type-ratio-batch` in the current directory. You can then use it as follows:

    sbatch type-ratio-batch ITERATIONS

Here `ITERATIONS` is the number of iterations, for example, 1000000.

This will read and write `/scratch/PROJECT/type-ratio-data`.

Acknowledgments
---------------

The authors wish to acknowledge CSC – IT Center for Science, Finland, for computational resources.
