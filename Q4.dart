void main(List<String> args) {
  print(findPrimes(20, 100));
}

List<int> findPrimes(int start, int end) {
  if (start > end) {
    return [];
  }

  List<int> primes = [];

  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      primes.add(number);
    }
  }

  return primes;
}

bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }

  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}
