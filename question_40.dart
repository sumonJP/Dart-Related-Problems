void main() {
  // Define a list of numbers
  List<int> numbers = [45, 12, 78, 23, 56, 89, 10];

  // Call the function to find the largest number
  int largestNumber = findLargestNumber(numbers);

  print('The largest number in the list is: $largestNumber');
}

// Function to find the largest number in a list
int findLargestNumber(List<int> list) {
  // Assume the first number is the largest
  int largest = list[0];

  // Iterate through the list to find the largest number
  for (int number in list) {
    if (number > largest) {
      largest = number;
    }
  }

  return largest;
}
