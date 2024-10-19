import 'dart:io';

void main() {
  // Asking the user to input a number
  stdout.write('Enter a number: ');
  int? number = int.parse(stdin.readLineSync()!);

  // Checking if the number is positive, negative, or zero
  if (number > 0) {
    print('$number is positive.');
  } else if (number < 0) {
    print('$number is negative.');
  } else {
    print('The number is zero.');
  }
}
