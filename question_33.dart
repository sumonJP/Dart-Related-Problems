// Function to check if a string is a palindrome
bool isPalindrome(String input) {
  // Convert the string to lowercase and remove spaces for comparison
  String normalizedInput = input.replaceAll(' ', '').toLowerCase();

  // Check if the string is equal to its reverse
  String reversedInput = normalizedInput.split('').reversed.join('');

  return normalizedInput == reversedInput;
}

void main() {
  String testString = 'madam';

  if (isPalindrome(testString)) {
    print('$testString is a palindrome');
  } else {
    print('$testString is not a palindrome');
  }
}
