// Recursive function to calculate the factorial of a number
int factorial(int num) {
  // Base case: if the number is 0 or 1, return 1
  if (num <= 1) {
    return 1;
  }
  // Recursive case: num * factorial(num - 1)
  return num * factorial(num - 1);
}

void main() {
  int number = 5;

  int result = factorial(number);

  print('The factorial of $number is $result');
}
