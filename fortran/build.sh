#!/bin/bash

gfortran -fPIC -c -o ./fortran/demo.o ./demo.f90
gfortran -shared ./fortran/demo.o -o ./demo.dll
