void main() {
  List<int> numbers = [10, 24, 33, 9, 77, 45];
  int sum = findSum(numbers);
  print('The sum of all elements in the list is: $sum');
}

int findSum(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}
