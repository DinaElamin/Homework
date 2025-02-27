void main(List<String> args) {
  print(sumOfNumbers([1, 2, 3, 4, 5]));
}

int sumOfNumbers(List<int> integerNumbers) {
  int sum = 0;
  for (var element in integerNumbers) {
    sum += element;
  }
  return sum;
}
