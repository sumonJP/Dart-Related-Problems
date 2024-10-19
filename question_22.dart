import 'dart:io';

void main() {
  // Asking the user to input a number N
  stdout.write('Enter a number N: ');
  int n = int.parse(stdin.readLineSync()!);

  int sum = 0;

  // Looping through numbers from 1 to N and calculating the sum
  for (int i = 1; i <= n; i++) {
    sum += i;
  }

  // Printing the result
  print('The sum of all numbers from 1 to $n is: $sum');
}
