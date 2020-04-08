#!/bin/bash

rm -rf build
rm -rf bin

mkdir build
mkdir bin

cd build
# /etinfo/users2/anna/software/cmake-3.11.3/bin/cmake ..
cmake ..
make

