import 'dart:io';

void main() {
  // Prompt the user for input
  stdout.write('Please enter a number: ');
  double number = double.parse(stdin.readLineSync()!);

  // Calculate square and cube
  double square = number * number;
  double cube = number * number * number;

  // Output the results
  print('The square of $number is: $square');
  print('The cube of $number is: $cube');
}
