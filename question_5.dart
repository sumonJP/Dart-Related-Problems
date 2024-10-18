import 'dart:io';

void main() {
  // ব্যবহারকারীর কাছ থেকে ইনপুট নেয়া
  stdout.write('Please enter an integer: ');

  try {
    // ইনপুটকে double হিসেবে নেওয়া
    double number = double.parse(stdin.readLineSync()!);

    // চেক করা হচ্ছে ইনপুটটি পূর্ণসংখ্যা কিনা
    if (number % 1 != 0) {
      print('Please enter a valid integer. You entered a decimal number.');
    } else {
      // পূর্ণসংখ্যা হলে জোড় বা বিজোড় নির্ণয় করা হচ্ছে
      int intNumber = number.toInt();

      if (intNumber % 2 == 0) {
        print('The number is even');
      } else {
        print('The number is odd');
      }
    }
  } catch (e) {
    print('Invalid input! Please enter a number.');
  }
}
