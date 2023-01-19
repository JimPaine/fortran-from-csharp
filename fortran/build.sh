#!/bin/bash

gfortran -fPIC -c -o ./demo.o ./demo.f90
gfortran -shared ./demo.o -o ./demo.dll
