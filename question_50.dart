void main() {
  String input = "Hello, World!";

  Map<String, int> frequency = characterFrequency(input);

  print('Character frequency:');
  frequency.forEach((char, count) {
    print('$char: $count');
  });
}

Map<String, int> characterFrequency(String input) {
  Map<String, int> frequencyMap = {};

  // Iterate through each character in the string
  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    // Skip non-alphanumeric characters
    if (RegExp(r'[^a-zA-Z0-9]').hasMatch(char)) {
      continue;
    }

    // Convert to lowercase to count case-insensitively
    char = char.toLowerCase();

    // Update frequency count in the map
    frequencyMap[char] = (frequencyMap[char] ?? 0) + 1;
  }

  return frequencyMap;
}
