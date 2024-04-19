TypeRatio on CSC
================

This repository contains scripts for running the [TypeRatio](https://github.com/suomela/type-ratio) tool on [CSC](https://www.csc.fi) computers. This is used for computations in the following article:

- Tanja Säily, Martin Hilpert and Jukka Suomela (to appear). "New approaches to investigating change in derivational productivity: Gender and internal factors in the development of *-ity* and *-ness*, 1600–1800." Patricia Ronan, Theresa Neumaier, Lisa Westermayer, Andreas Weilinghoff & Sarah Buschfeld (eds.), *Crossing boundaries through corpora: Innovative approaches to corpus linguistics* (Studies in Corpus Linguistics). Amsterdam: John Benjamins.

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

Author
------

Jukka Suomela, https://jukkasuomela.fi/

Acknowledgments
---------------

The author wishes to acknowledge CSC – IT Center for Science, Finland, for computational resources.
