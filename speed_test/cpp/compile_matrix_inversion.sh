#!/bin/bash

# no optimizations
g++ matrix_inversion.cpp -o matrix_inversion -std=c++14
chmod +x matrix_inversion

# O3 optimization
g++ matrix_inversion.cpp -o matrix_inversion_O3 -std=c++14 -O3
chmod +x matrix_inversion_O3

# Ofast optimization
g++ matrix_inversion.cpp -o matrix_inversion_Ofast -std=c++14 -Ofast
chmod +x matrix_inversion_Ofast
