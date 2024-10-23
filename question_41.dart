void main() {
  List<int> numbers = [10, 24, 33, 24, 9, 77, 45, 9, 77];
  List<int> uniqueNumbers = removeDuplicates(numbers);
  print('List after removing duplicates: $uniqueNumbers');
}

List<int> removeDuplicates(List<int> numbers) {
  return numbers.toSet().toList();
}
