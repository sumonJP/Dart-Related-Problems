void main() {
  List<int> numbers = [10, 24, 33, 9, 77, 45];
  int k = 2; // Number of positions to rotate

  List<int> rotatedList = rotateList(numbers, k);
  print('List after rotating by $k positions: $rotatedList');
}

List<int> rotateList(List<int> numbers, int k) {
  int n = numbers.length;
  if (n == 0) return numbers; // Return the list as is if it's empty

  k = k % n; // Handle cases where k is greater than the list length
  return numbers.sublist(k) + numbers.sublist(0, k);
}
