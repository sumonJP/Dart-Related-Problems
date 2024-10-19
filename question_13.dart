import 'dart:io';

void main() {
  // Asking the user to input a character
  stdout.write('Enter a character: ');
  String? char = stdin.readLineSync();

  // Checking if the input is valid and is a single character
  if (char != null && char.length == 1) {
    // Convert the character to lowercase for easy comparison
    char = char.toLowerCase();

    // Check if it's a vowel
    if ('aeiou'.contains(char)) {
      print('$char is a vowel.');
    } else {
      print('$char is a consonant.');
    }
  } else {
    print('Please enter a valid single character.');
  }
}
