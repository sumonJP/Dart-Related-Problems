import 'dart:io';

class Student {
  String name;
  int rollNumber;
  List<double> marks;

  Student(this.name, this.rollNumber, this.marks);

  double getAverageMarks() {
    double total = marks.reduce((a, b) => a + b);
    return total / marks.length;
  }
}

class StudentManagementSystem {
  List<Student> students = [];

  void addStudent(String name, int rollNumber, List<double> marks) {
    students.add(Student(name, rollNumber, marks));
    print('Student added successfully!');
  }

  void viewStudent(int rollNumber) {
    for (var student in students) {
      if (student.rollNumber == rollNumber) {
        print(
            'Roll No: ${student.rollNumber}, Name: ${student.name}, Marks: ${student.marks}');
        return;
      }
    }
    print('Student not found!');
  }

  void calculateAverageMarks(int rollNumber) {
    for (var student in students) {
      if (student.rollNumber == rollNumber) {
        print('Average Marks of ${student.name}: ${student.getAverageMarks()}');
        return;
      }
    }
    print('Student not found!');
  }

  void findTopStudent() {
    if (students.isEmpty) {
      print('No students in the system.');
      return;
    }

    Student topStudent = students[0];
    for (var student in students) {
      if (student.getAverageMarks() > topStudent.getAverageMarks()) {
        topStudent = student;
      }
    }

    print(
        'Top Student: ${topStudent.name}, Roll No: ${topStudent.rollNumber}, Average Marks: ${topStudent.getAverageMarks()}');
  }

  void removeStudent(int rollNumber) {
    students.removeWhere((student) => student.rollNumber == rollNumber);
    print('Student removed successfully!');
  }

  void displayAllStudents() {
    if (students.isEmpty) {
      print('No students to display.');
      return;
    }

    for (var student in students) {
      print(
          'Roll No: ${student.rollNumber}, Name: ${student.name}, Average Marks: ${student.getAverageMarks()}');
    }
  }
}

void main() {
  StudentManagementSystem system = StudentManagementSystem();

  while (true) {
    print('--- Student Management System ---');
    print('1. Add Student');
    print('2. View Student');
    print('3. Calculate Average Marks');
    print('4. Find Top Student');
    print('5. Remove Student');
    print('6. Display All Students');
    print('7. Exit');

    stdout.write('Enter your choice: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write('Enter student\'s name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter roll number: ');
        int rollNumber = int.parse(stdin.readLineSync()!);
        stdout.write('Enter marks in 5 subjects (space-separated): ');
        List<double> marks =
            stdin.readLineSync()!.split(' ').map(double.parse).toList();
        system.addStudent(name, rollNumber, marks);
        break;

      case 2:
        stdout.write('Enter roll number: ');
        int rollNumber = int.parse(stdin.readLineSync()!);
        system.viewStudent(rollNumber);
        break;

      case 3:
        stdout.write('Enter roll number: ');
        int rollNumber = int.parse(stdin.readLineSync()!);
        system.calculateAverageMarks(rollNumber);
        break;

      case 4:
        system.findTopStudent();
        break;

      case 5:
        stdout.write('Enter roll number: ');
        int rollNumber = int.parse(stdin.readLineSync()!);
        system.removeStudent(rollNumber);
        break;

      case 6:
        system.displayAllStudents();
        break;

      case 7:
        print('Exiting...');
        return;

      default:
        print('Invalid choice! Please try again.');
    }
  }
}
