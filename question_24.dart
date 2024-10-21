import 'dart:io';

void main() {
  // ব্যবহারকারীর কাছ থেকে সংখ্যা ইনপুট নেওয়া হচ্ছে
  stdout.write('Enter a number to reverse: ');
  int number = int.parse(stdin.readLineSync()!);

  int reverse = 0; // উল্টানো সংখ্যা সংরক্ষণ করতে একটি ভেরিয়েবল
  int remainder;

  // while লুপ চলবে যতক্ষণ পর্যন্ত number > 0
  while (number != 0) {
    remainder = number % 10; // শেষ সংখ্যা বের করা
    reverse = reverse * 10 + remainder; // উল্টানো সংখ্যা গঠন করা
    number = number ~/ 10; // number থেকে শেষ সংখ্যা বাদ দেওয়া
  }

  // উল্টানো সংখ্যা প্রিন্ট করা হচ্ছে
  print('Reversed number: $reverse');
}
