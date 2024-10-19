import 'dart:io';

void main() {
  // Asking the user to input two numbers
  stdout.write('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // Asking the user to choose an operation
  stdout.write('Enter an operator (+, -, *, /): ');
  String? operator = stdin.readLineSync();

  double result;

  // Performing the operation using switch case
  switch (operator) {
    case '+':
      result = num1 + num2;
      print('Result: $num1 + $num2 = $result');
      break;

    case '-':
      result = num1 - num2;
      print('Result: $num1 - $num2 = $result');
      break;

    case '*':
      result = num1 * num2;
      print('Result: $num1 * $num2 = $result');
      break;

    case '/':
      if (num2 != 0) {
        result = num1 / num2;
        print('Result: $num1 / $num2 = $result');
      } else {
        print('Error: Division by zero is not allowed.');
      }
      break;

    default:
      print('Invalid operator. Please use one of the following: +, -, *, /');
      break;
  }
}
