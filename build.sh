#!/bin/bash

set -e

if [ "$#" -ne 2 ]; then
    echo "usage: ./build.sh PROJECT TOTAL" >&2
    exit 1
fi

project="$1"
total="$2"

git submodule init
git submodule update

mkdir -p "/scratch/$project/type-ratio-data/in"
mkdir -p "/scratch/$project/type-ratio-log"

cat src/type-ratio-batch |
    sed "s/_PROJECT_/$project/g" |
    sed "s/_TOTAL_/$total/g" > type-ratio-batch

cd type-ratio
./build.sh

echo
echo "Everything ready. Try e.g.:"
echo "sbatch type-ratio-batch 1000000"
echo
