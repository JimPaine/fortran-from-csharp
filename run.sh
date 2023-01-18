#!/bin/bash

gfortran -fPIC -c -o ./fortran/demo.o ./fortran/demo.f90
dotnet build ./console/console.csproj
gfortran -shared ./fortran/demo.o -o ./fortran/demo.dll
cp ./fortran/demo.dll ./console/bin/Debug/net7.0/demo.dll
cp ./fortran/demo.dll ./api/bin/Debug/net7.0/demo.dll
dotnet run --project ./console/console.csproj