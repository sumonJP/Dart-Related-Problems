import 'dart:io';

void main() {
  // সেলসিয়াস মান ইনপুট নেওয়া হচ্ছে
  stdout.write('Enter temperature in Celsius: ');
  double? celsius = double.parse(stdin.readLineSync()!);

  // সেলসিয়াস থেকে ফারেনহাইটে রূপান্তর করা
  double fahrenheit = (celsius * 9 / 5) + 32;

  // ফলাফল আউটপুট করা
  print('$celsius°C is equal to $fahrenheit°F');
}
