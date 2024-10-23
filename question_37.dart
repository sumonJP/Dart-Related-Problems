// Recursive function to calculate power (base^exponent)
double power(double base, int exponent) {
  // Base case: Any number raised to the power of 0 is 1
  if (exponent == 0) {
    return 1;
  }
  // If the exponent is negative, calculate the positive power and take the reciprocal
  else if (exponent < 0) {
    return 1 / power(base, -exponent);
  }
  // Recursive case: Multiply base by the result of power(base, exponent - 1)
  return base * power(base, exponent - 1);
}

void main() {
  double base = 2;
  int exponent = 3;

  double result = power(base, exponent);

  print('$base raised to the power of $exponent is $result');
}
