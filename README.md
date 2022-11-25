# Fortran call from C#

> Important - I am by no means a Fortran developer and the result of this has be hugely thanks to a lot of trial and error on the Fortran side.

## Included

- dev container - run in GitHub or VSCode without having to install Fortran tooling or .NET tooling
- Basic Fortran library which adds 1 to an integer
- C# console app which calls the compiled fortran library
- VSCode to run and test code.

> Watch out for - name mangaling, this caught me out and a combition of using BIND and iso_c_binding has helped me keep it clean and consistent.

## Testing

F1 - Run task - run

or from root directory

```bash
./run.sh
```