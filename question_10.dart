import 'dart:io';
import 'dart:math';

void main() {
  // Prompt the user for the radius
  stdout.write('Enter the radius of the circle: ');
  String? input = stdin.readLineSync();

  // Check if the input is valid and can be parsed to a double
  if (input == null ||
      double.tryParse(input) == null ||
      double.parse(input) <= 0) {
    print('Invalid input! Please enter a positive number for the radius.');
    return;
  }

  // Parse the radius as a double
  double radius = double.parse(input);

  // Calculate the perimeter (circumference) and area
  double perimeter = 2 * pi * radius; // Perimeter = 2 * π * r
  double area = pi * pow(radius, 2); // Area = π * r^2

  // Print the results
  print('The perimeter (circumference) of the circle is: $perimeter');
  print('The area of the circle is: $area');
}
