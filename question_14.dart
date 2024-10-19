import 'dart:io';

void main() {
  // Asking the user to input a year
  stdout.write('Enter a year: ');
  int year = int.parse(stdin.readLineSync()!);

  // Checking if the year is a leap year
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print('$year is a leap year.');
  } else {
    print('$year is not a leap year.');
  }
}
