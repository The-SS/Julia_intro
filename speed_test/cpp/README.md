# Running these scripts
These scripts will compile and run using your g++ compiler.

The scripts were tested with g++ 7.4.0 and Eigen 3.3.7 (Eigen folder placed in `/usr/local/include/.` as described [here](https://eigen.tuxfamily.org/dox/GettingStarted.html)) on Ubuntu 18.04.

### Compile
To compile a script, navigate to this folder (`cpp`) run:
```
g++ matrix_inversion.cpp -o matrix_inversion -march=native
```
where `matrix_inversion.cpp` can be replaced by any other script to be compiled and `matrix_inversion` can be replaced by the desired compiled script name. `-march=native` allows multithreading. You can also try the `-O3` and `-Ofast` flag options to speed up execution.

Alternatively, you can use the provided shell scripts to compile cpp files in four ways: no threading, multithreading, multithreading with O3 optimization, and multithreading with Ofast optimization.
```
./compile_matrix_inversion.sh
```

### Run
To run a script, selected the compiled script, such as `matrix_inversion` and run it as follows:
```
./matrix_inversion
```
