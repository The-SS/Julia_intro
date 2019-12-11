#!/bin/bash

# no optimizations
g++ for_loops.cpp -o for_loops -std=c++14
chmod +x for_loops

# O3 optimization
g++ for_loops.cpp -o for_loops_O3 -std=c++14 -O3
chmod +x for_loops_O3

# Ofast optimization
g++ for_loops.cpp -o for_loops_Ofast -std=c++14 -Ofast
chmod +x for_loops_Ofast
