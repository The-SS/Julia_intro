#!/bin/bash

# no multithreading
g++ matrix_inversion.cpp -o matrix_inversion
chmod +x matrix_inversion

# multithreaded
g++ matrix_inversion.cpp -o matrix_inversion_multithread -march=native
chmod +x matrix_inversion_multithread

# O3 optimization
g++ matrix_inversion.cpp -o matrix_inversion_O3 -march=native -O3
chmod +x matrix_inversion_O3

# Ofast optimization
g++ matrix_inversion.cpp -o matrix_inversion_Ofast -march=native -Ofast
chmod +x matrix_inversion_Ofast
