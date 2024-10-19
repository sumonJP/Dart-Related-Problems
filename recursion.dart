import 'dart:io';

// Recursive function to print numbers up to n
void printNumbers(int current, int n) {
  if (current > n) return; // Base condition to stop recursion
  print(current);
  printNumbers(current + 1, n); // Recursive call with the next number
}

void main() {
  // Asking the user to input a number n
  stdout.write('Enter the value of n: ');
  int n = int.parse(stdin.readLineSync()!);

  // Calling the recursive function to print numbers from 1 to n
  printNumbers(1, n);
}
