import 'dart:io';

void main() {
  // Asking the user to input marks
  stdout.write('Enter your marks: ');
  int marks = int.parse(stdin.readLineSync()!);

  // Assigning grades based on the marks
  String grade;

  if (marks >= 90) {
    grade = 'A';
  } else if (marks >= 80) {
    grade = 'B';
  } else if (marks >= 70) {
    grade = 'C';
  } else if (marks >= 60) {
    grade = 'D';
  } else {
    grade = 'F';
  }

  // Printing the grade
  print('Your grade is: $grade');
}
