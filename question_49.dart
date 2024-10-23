void main() {
  String input = "A man, a plan, a canal, Panama!";

  bool isPalindrome = checkPalindrome(input);
  if (isPalindrome) {
    print('The string is a palindrome.');
  } else {
    print('The string is not a palindrome.');
  }
}

bool checkPalindrome(String input) {
  // Remove non-alphanumeric characters and convert to lowercase
  String cleanedInput =
      input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  // Check if the cleaned string is equal to its reverse
  return cleanedInput == cleanedInput.split('').reversed.join('');
}
