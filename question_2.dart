void main() {
  // Declare two variables
  int a = 10;
  int b = 20;

  print("Before swapping: a = $a, b = $b");

  // Swap the values of a and b without using a third variable
  a = a + b; // a now becomes 30
  b = a - b; // b becomes 10 (original value of a)
  a = a - b; // a becomes 20 (original value of b)

  print("After swapping: a = $a, b = $b");
}
