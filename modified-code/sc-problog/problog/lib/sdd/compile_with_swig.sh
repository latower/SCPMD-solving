#!/bin/bash

swig -python sdd.i
gcc -O2 -fPIC -c -std=c99 except.c
gcc -O2 -fPIC -c -std=c99 mipsearch.c
gcc -O2 -fPIC -c -std=c99 mipstate.c
gcc -O2 -fPIC -c -std=c99 sdd_wrap.c -I/home/anna/software/anaconda3/pkgs/python-3.7.2-h0371630_0/include/python3.7m
ld -shared except.o mipsearch.o mipstate.o sdd_wrap.o -o _sdd.cpython-37m-x86_64-linux-gnu.so linux/libsdd.so 
gcc -shared except.o mipsearch.o mipstate.o sdd_wrap.o -o _sdd.cpython-37m-x86_64-linux-gnu.so linux/libsdd.so 
