void main() {
  List<int> numbers = [10, 24, 33, 9, 77, 45];

  int? secondLargest = findSecondLargest(numbers);
  if (secondLargest != null) {
    print('The second largest element is: $secondLargest');
  } else {
    print('The list does not have enough elements.');
  }
}

int? findSecondLargest(List<int> numbers) {
  if (numbers.length < 2) {
    return null; // Return null if the list doesn't have at least 2 elements
  }

  int largest = numbers[0];
  int secondLargest = numbers[0];

  for (int number in numbers) {
    if (number > largest) {
      secondLargest = largest;
      largest = number;
    } else if (number > secondLargest && number != largest) {
      secondLargest = number;
    }
  }

  return secondLargest;
}
