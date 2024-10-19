import 'dart:io';

void main() {
  // Asking the user to input a number
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  // Checking if the number is in the range 1 to 100
  if (number >= 1 && number <= 100) {
    print('$number is within the range of 1 to 100.');
  } else {
    print('$number is outside the range of 1 to 100.');
  }
}
