import 'dart:io';

void main() {
  // Prompt the user for the principal amount
  stdout.write('Enter the principal amount (P): ');
  double principal = double.parse(stdin.readLineSync()!);

  // Prompt the user for the rate of interest
  stdout.write('Enter the rate of interest (R): ');
  double rate = double.parse(stdin.readLineSync()!);

  // Prompt the user for the time period
  stdout.write('Enter the time period (T in years): ');
  double time = double.parse(stdin.readLineSync()!);

  // Calculate simple interest
  double simpleInterest = (principal * rate * time) / 100;

  // Output the result
  print('The simple interest is: $simpleInterest');
}
