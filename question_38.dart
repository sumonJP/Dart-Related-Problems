void main() {
  // Define a list of elements
  List<String> elements = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry'];

  // Call the function to print the elements
  printListElements(elements);
}

// Function to print all elements of a list
void printListElements(List<String> list) {
  for (String element in list) {
    print(element);
  }
}
