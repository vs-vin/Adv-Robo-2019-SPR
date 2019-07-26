#include <iostream>
#include <vector>

using std::cout;
using std::endl;


double motionProbability(bool motion, int previous_position, int current_position)
{
  // Calculate the distance from previous_position to current position
  // Remember to wrap around the vector
  int distance = current_position - previous_position;
  
  if (distance < 0)
  	distance += 20;
  
  // TEST
  printf("\n Distance: %i \n ", distance);
  
  // Given the motion input and distance, return the probability
  if (motion)
  {
  	//
  	if (distance == 1)
  		return 0.7;
  	else if (distance == 2)
  		return 0.3;
  	else
  		return 0.0;
  }
  else
  {
  	//
  	if (distance == 0)
  		return 1.0;
  	else
  		return 0.0;
  }
  
  //printf("~");
  
  
  // Remove this when you are done
  return 0.;
}

double observationProbability(bool observation, int position)
{
  // Given the observation input and position, return the probability
  if (position == 2 ||
			position == 4 ||
			position == 7)
  {
  	//
  	if (observation)
  		return 0.8;
  	else
  		return 0.2;  	
  }
  else
  {
  	//
  	if (observation)
  		return 0.1;
  	else
  		return 0.9;
  }
  
  
  // Remove this when you are done
  return 0.;
}

void normaliseState(std::vector<double>& state)
{
  // Normalise the state variable so that the sum of all the probabilities is equal to 1
  
  
  
}

void initialiseState(std::vector<double>& state)
{
  // Fill the state variable with initial probabilities
  // You may need to use a "." in your numbers (e.g. "1.0") so that the result isn't an integer
  double initVal = 1.0;
  int vectorSize = 0;
  
  vectorSize = state.size();
  printf("\n Vector Size: %i \n", vectorSize);	// TEST
  
  initVal /= vectorSize;
  // initVal = 1/20;	WHY NO WORK???????????????????????????????????????????????
  printf(" Vector value: %f \n\n", initVal);	// TEST
  
  for (double& i : state)
  	i = initVal;
  
  
}

std::vector<double> updateState(const std::vector<double>& previous_state, bool motion, bool observation)
{
  // Declare a new state vector with the same size as previous_state
  // All values in state are initialised with 0.
  std::vector<double> state(previous_state.size());

  // Motion update
  
  
  
  // Observation update
  
  
  
  // Normalise
  normaliseState(state);
  
  return state;
}

void printState(const std::vector<double>& state)
{
  cout << "Position:    ";

  for (int i = 0; i < (state.size() -1); ++i)
  {
    cout << i << "     ";

    if (i < 10)
      cout << " ";
  }

  cout << (state.size() - 1) << endl;

  cout << "Probability: ";

  // Iterate through the state vector until the second last value
  for (auto it = state.begin(); it < (state.end() - 1); ++it)
  {
    cout << *it << " ";
  }

  // Print the last value and a new line
  cout << state.back() << endl;
}

int main()
{
  // Use fixed precision with 1 digit after the decimal
  cout.precision(1);
  cout << std::fixed;

  cout << endl;

  // Test the motionProbability function
  cout << "Testing motionProbability function:" << endl;

  cout << "Probability given no motion input, previous position 13 and current position 13:"
       << "\t" << motionProbability(false, 13, 13) << endl;

  cout << "Probability given no motion input, previous position 4 and current position 5:"
       << "\t\t" << motionProbability(false, 4, 5) << endl;

  cout << "Probability given no motion input, previous position 6 and current position 3:"
       << "\t\t" << motionProbability(false, 6, 3) << endl;

  cout << "Probability given a motion input, previous position 1 and current position 1:"
       << "\t\t" << motionProbability(true, 1, 1) << endl;

  cout << "Probability given a motion input, previous position 8 and current position 9:"
       << "\t\t" << motionProbability(true, 8, 9) << endl;

  cout << "Probability given a motion input, previous position 11 and current position 13:"
       << "\t\t" << motionProbability(true, 11, 13) << endl;

  cout << "Probability given a motion input, previous position 17 and current position 16:"
       << "\t\t" << motionProbability(true, 17, 16) << endl;

  cout << "Probability given a motion input, previous position 19 and current position 0:"
       << "\t\t" << motionProbability(true, 19, 0) << endl;

  cout << "Probability given a motion input, previous position 19 and current position 1:"
       << "\t\t" << motionProbability(true, 19, 1) << endl;

  cout << "Probability given a motion input, previous position 18 and current position 0:"
       << "\t\t" << motionProbability(true, 18, 0) << endl;

  cout << "Probability given a motion input, previous position 18 and current position 1:"
       << "\t\t" << motionProbability(true, 18, 1) << endl;

  cout << endl;

  // Test the observationProbability function
  cout << "Testing observationProbability function:" << endl;

  cout << "Probability given no observation input and position 0:" << "\t" << observationProbability(false, 0) << endl;
  cout << "Probability given no observation input and position 7:" << "\t" << observationProbability(false, 7) << endl;
  cout << "Probability given no observation input and position 13:" << "\t" << observationProbability(false, 13) << endl;

  cout << "Probability given an observation input and position 0:" << "\t" << observationProbability(true, 0) << endl;
  cout << "Probability given an observation input and position 7:" << "\t" << observationProbability(true, 7) << endl;
  cout << "Probability given an observation input and position 13:" << "\t" << observationProbability(true, 13) << endl;

  cout << endl;

  // Use fixed precision with 4 digits after the decimal
  cout.precision(4);
  cout << std::fixed;

  // Test normalisation
  cout << "Testing normaliseState function:" << endl;

  std::vector<double> test = {0.5, 1., 0.5, 2., 1.};

  cout << "Vector before normalisation:" << endl;
  printState(test);

  normaliseState(test);

  cout << "Vector after normalisation:" << endl;
  printState(test);

  // Declare the state vector
  std::vector<double> state;
  state.resize(20);

  cout << endl;

  // Print the state before initialisation
  cout << "Before initialistion:" << endl;
  printState(state);
  cout << endl;

  // Initialise the state
  initialiseState(state);

  // Print the state after initialisation
  cout << "After initialistion:" << endl;
  printState(state);
  cout << endl;

  // First update
  cout << "Step 1 (no motion, door observed)" << endl;
  state = updateState(state, false, true);
  printState(state);
  cout << endl;

  // Second update
  cout << "Step 2 (motion, no door observed)" << endl;
  state = updateState(state, true, false);
  printState(state);
  cout << endl;

  // Third update
  cout << "Step 3 (motion, door observed)" << endl;
  state = updateState(state, true, true);
  printState(state);
  cout << endl;

  // Fourth update
  cout << "Step 4 (motion, no door observed)" << endl;
  state = updateState(state, true, false);
  printState(state);
  cout << endl;

  // Fifth update
  cout << "Step 5 (motion, no door observed)" << endl;
  state = updateState(state, true, false);
  printState(state);
  cout << endl;

  return 0;

}
