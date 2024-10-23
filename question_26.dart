import 'dart:io';

void main() {
  // ব্যবহারকারীর কাছ থেকে সংখ্যা ইনপুট নেওয়া হচ্ছে
  stdout.write('একটি সংখ্যা দিন: ');
  int number = int.parse(stdin.readLineSync()!);

  // যদি সংখ্যা ১ বা এর নিচে হয়, তা প্রাইম নয়
  if (number <= 1) {
    print('$number প্রাইম সংখ্যা নয়।');
    return;
  }

  // প্রাইম চেক করার জন্য ফ্ল্যাগ ভেরিয়েবল ব্যবহার করা হচ্ছে
  bool isPrime = true;

  // লুপের মাধ্যমে সংখ্যা ভাগ করা হচ্ছে
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      isPrime = false; // যদি নিঃশেষে ভাগ করা যায়, প্রাইম নয়
      break; // ভাগফল পাওয়া গেলে লুপ বন্ধ করা হচ্ছে
    }
  }

  // ফলাফল প্রিন্ট করা হচ্ছে
  if (isPrime) {
    print('$number একটি প্রাইম সংখ্যা।');
  } else {
    print('$number একটি প্রাইম সংখ্যা নয়।');
  }
}
