import 'dart:io';

void main() {
  // Asking the user to input the number of terms N
  stdout.write('Enter the number of terms for Fibonacci series: ');
  int n = int.parse(stdin.readLineSync()!);

  // First two terms of the Fibonacci series
  int a = 0, b = 1;

  // Printing the Fibonacci series
  print('Fibonacci series up to $n terms:');

  for (int i = 1; i <= n; i++) {
    print(a);
    int nextTerm = a + b; // Calculate the next term
    a = b; // Update a to the next term
    b = nextTerm; // Update b to the next term
  }
}
