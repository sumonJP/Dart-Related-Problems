import 'dart:io';

void main() {
  // Prompt the user for input
  stdout.write('Enter a character: ');
  String? input = stdin.readLineSync();

  // Check if the input is valid and has only one character
  if (input == null || input.length != 1) {
    print('Invalid input! Please enter a single character.');
    return;
  }

  // Get the ASCII value of the character
  int asciiValue = input.codeUnitAt(0);

  // Print the ASCII value
  print('The ASCII value of "$input" is: $asciiValue');
}
