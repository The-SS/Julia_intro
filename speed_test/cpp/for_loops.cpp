#include <iostream>
#include <ctime>
#include <array>
using namespace std;

int main()
{
  clock_t time_req; // clock object
  unsigned long long int outerloop = 10000; // outer loop size
  unsigned long long int innerloop = 10000; // inner loop size
  unsigned long long int num_experiments = 10; // number of experiments
  float total_times[num_experiments]; // array with time for each experiment

  cout << outerloop << "x" << innerloop << " Nested For Loops" << endl;

  // generate random matrix and invert it
  for(unsigned long long int i=0; i<num_experiments; i++)
  {
    cout << "Experiment " << i+1 << " of " << num_experiments;
    unsigned long long int counter = 0;
    time_req = clock();
    for(unsigned long long int j=0; j<outerloop; j++)
    {
      unsigned long long int counter2 = 0;
      for(unsigned long long int k=0; k<innerloop; k++)
      {
        counter2+=k;
      }
      counter+=counter2;
    }
    time_req = clock() - time_req; // time inversion only
    total_times[i] = (float)time_req/CLOCKS_PER_SEC;
    cout << "     Took: " << total_times[i] << "seconds" << endl;
    cout<<"counter "<< counter<<endl;
  }

  float avrg = 0;
  for(unsigned long long int i=0; i<num_experiments; i++)
  {
    avrg+=total_times[i];
  }
  cout << "~~~~~~~~~~~~~~~" << endl;
  cout << "Ran "<< num_experiments << " experiments in: " << avrg << endl;
  avrg/=num_experiments;
  cout << "Average: "<< avrg << endl;
  return 0;
}
