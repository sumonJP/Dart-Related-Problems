import 'dart:io';

void main() {
  // Taking three numbers as input from the user
  stdout.write('Enter the first number: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the third number: ');
  int num3 = int.parse(stdin.readLineSync()!);

  // Checking which number is the largest
  if (num1 >= num2 && num1 >= num3) {
    print('The largest number is: $num1');
  } else if (num2 >= num1 && num2 >= num3) {
    print('The largest number is: $num2');
  } else {
    print('The largest number is: $num3');
  }
}
