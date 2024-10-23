void main() {
  List<int> list1 = [10, 24, 33];
  List<int> list2 = [9, 77, 45];

  List<int> mergedList = mergeLists(list1, list2);
  print('Merged List: $mergedList');
}

List<int> mergeLists(List<int> list1, List<int> list2) {
  return [...list1, ...list2];
}
