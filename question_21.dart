import 'dart:io';

void main() {
  // Asking the user to input a number
  stdout.write('Enter a number to print its multiplication table: ');
  int number = int.parse(stdin.readLineSync()!);

  // Printing the multiplication table using a for loop
  for (int i = 1; i <= 10; i++) {
    print('$number x $i = ${number * i}');
  }
}
