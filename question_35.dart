// Function to find the maximum and minimum of three numbers
void findMaxMin(int num1, int num2, int num3) {
  int max = num1;
  int min = num1;

  // Finding the maximum
  if (num2 > max) {
    max = num2;
  }
  if (num3 > max) {
    max = num3;
  }

  // Finding the minimum
  if (num2 < min) {
    min = num2;
  }
  if (num3 < min) {
    min = num3;
  }

  print('Maximum: $max');
  print('Minimum: $min');
}

void main() {
  int number1 = 15;
  int number2 = 7;
  int number3 = 21;

  findMaxMin(number1, number2, number3);
}
