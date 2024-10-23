void main() {
  List<int> numbers = [10, 24, 33, 9, 77, 45];

  List<int> reversedList = reverseList(numbers);
  print('Reversed List: $reversedList');
}

List<int> reverseList(List<int> numbers) {
  return numbers.reversed.toList();
}
