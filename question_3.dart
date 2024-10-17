import 'dart:io';

void main() {
  // Prompt the user for the length
  stdout.write('Enter the length of the rectangle: ');
  double? length = double.parse(stdin.readLineSync()!);

  // Prompt the user for the width
  stdout.write('Enter the width of the rectangle: ');
  double? width = double.parse(stdin.readLineSync()!);

  // Calculate the area of the rectangle
  double area = length * width;

  // Output the result
  print('The area of the rectangle is: $area');
}
