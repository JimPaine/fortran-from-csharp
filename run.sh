#!/bin/bash

gfortran -c -o ./fortran/demo.o ./fortran/demo.f90
dotnet build ./console/console.csproj
gfortran -shared ./fortran/demo.o -o ./console/bin/Debug/net7.0/demo.dll
dotnet run --project ./console/console.csproj