// Function to calculate the average of a list of numbers
double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) {
    return 0; // Return 0 if the list is empty
  }

  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }

  return sum / numbers.length;
}

void main() {
  List<int> numberList = [10, 20, 30, 40, 50];

  double average = calculateAverage(numberList);

  print('The average of the list is $average');
}
