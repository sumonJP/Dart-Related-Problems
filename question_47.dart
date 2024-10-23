void main() {
  String input = "Hello, how are you?";

  int vowelCount = countVowels(input);
  print('The number of vowels in the string is: $vowelCount');
}

int countVowels(String input) {
  int count = 0;
  String vowels = "aeiouAEIOU";

  for (int i = 0; i < input.length; i++) {
    if (vowels.contains(input[i])) {
      count++;
    }
  }

  return count;
}
