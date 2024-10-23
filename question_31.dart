// Function to check if a number is odd or even
void checkOddOrEven(int num) {
  if (num % 2 == 0) {
    print('$num is even');
  } else {
    print('$num is odd');
  }
}

void main() {
  int number = 7; // You can change this number to test with different values
  checkOddOrEven(number);
}
