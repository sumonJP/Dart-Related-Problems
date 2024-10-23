void main() {
  String input = "Hello, World!";

  String reversedString = reverseString(input);
  print('Reversed String: $reversedString');
}

String reverseString(String input) {
  return input.split('').reversed.join('');
}
