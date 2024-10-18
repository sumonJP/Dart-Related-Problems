import 'dart:io';

void main() {
  // Prompt the user for input
  stdout.write('Enter the first integer: ');
  int? firstNumber = int.tryParse(stdin.readLineSync()!);

  stdout.write('Enter the second integer: ');
  int? secondNumber = int.tryParse(stdin.readLineSync()!);

  // Check if the inputs are valid integers
  if (firstNumber == null || secondNumber == null) {
    print('Invalid input! Please enter valid integers.');
    return;
  }

  // Determine and print the larger number
  if (firstNumber > secondNumber) {
    print('The larger number is: $firstNumber');
  } else if (secondNumber > firstNumber) {
    print('The larger number is: $secondNumber');
  } else {
    print('Both numbers are equal: $firstNumber');
  }
}
