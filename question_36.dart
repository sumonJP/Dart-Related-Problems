// Function to return the longer of two strings
String findLongerString(String str1, String str2) {
  if (str1.length > str2.length) {
    return str1;
  } else if (str2.length > str1.length) {
    return str2;
  } else {
    return 'Both strings are of equal length';
  }
}

void main() {
  String string1 = 'Hello';
  String string2 = 'WorldWide';

  String longerString = findLongerString(string1, string2);

  print('The longer string is: $longerString');
}
