#include <iostream>
#include <ctime>
#include <Eigen/Dense>
#include <array>
using namespace std;
using namespace Eigen;

int main()
{
  clock_t time_req; // clock object
  int mat_size = 5000; // matrix size
  MatrixXd mat, mat_inv; // random matrix
  int num_experiments = 10; // number of experiments
  float total_times[num_experiments]; // array with time for each experiment

  cout << mat_size << "x" << mat_size << " Matrix inversion script" << endl;

  // generate random matrix and invert it
  for(int i=0; i<num_experiments; i++)
  {
    cout << "Matrix " << i+1 << " of " << num_experiments;
    mat = MatrixXd::Random(mat_size, mat_size);
    time_req = clock();
    mat_inv = mat.inverse();
    time_req = clock() - time_req; // time inversion only
    total_times[i] = (float)time_req/CLOCKS_PER_SEC;
    cout << "     Took: " << total_times[i] << "seconds" << endl;
  }

  float avrg = 0;
  for(int i=0; i<num_experiments; i++)
  {
    avrg+=total_times[i];
  }
  cout << "~~~~~~~~~~~~~~~" << endl;
  cout << "Ran "<< num_experiments << " experiments in: " << avrg << endl;
  avrg/=num_experiments;
  cout << "Average: "<< avrg << endl;
  return 0;
}
