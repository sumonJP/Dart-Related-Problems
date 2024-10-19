import 'dart:io';

void main() {
  // Asking the user to input a number
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  int factorial = 1;

  // Using a for loop to calculate the factorial
  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }

  print('Factorial of $number is $factorial.');
}
