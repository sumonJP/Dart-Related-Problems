void main() {
  print('Prime numbers between 1 and 100 are:');

  for (int num = 2; num <= 100; num++) {
    if (isPrime(num)) {
      print(num);
    }
  }
}

// Function to check if a number is prime
bool isPrime(int n) {
  if (n < 2) {
    return false;
  }
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
