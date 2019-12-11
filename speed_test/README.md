# Speed Test
Contains files for testing the speed of C++, Python, Matlab, and Julia at a few tasks.

Each folder contains its own README file explaining the requirements and how to run the scripts.

The current scripts compare:
- Matrix inversion:
  - Only the actual matrix inversion is timed
  - Languages:
    - cpp: uses eigen library, with and without optimizations (no parallel processing)
    - matlab: uses native matlab inv function and runs as a script and as a function
    - julia: uses native julia inv function and runs as a script and as a function
    - python: uses numpy inv function and runs as a script and as a function
- Nested for loops:
  - Times the duration for running a nested for loop with simple addition

This testing is NOT comprehensive or perfect and is only illustrative.
