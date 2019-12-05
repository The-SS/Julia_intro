#!/bin/bash

# no multithreading
g++ for_loops.cpp -o for_loops
chmod +x for_loops

# multithreaded
g++ for_loops.cpp -o for_loops_multithread -march=native
chmod +x for_loops_multithread

# O3 optimization
g++ for_loops.cpp -o for_loops_O3 -march=native -O3
chmod +x for_loops_O3

# Ofast optimization
g++ for_loops.cpp -o for_loops_Ofast -march=native -Ofast
chmod +x for_loops_Ofast
