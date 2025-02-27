/*Basic Arithmetic Calculator
Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
Handle cases where division by zero might occur. */

void main(List<String> args) {
  print( arithmeticCalculator(firstNumber: 2, secondNumber: 3, operator: '+'));
  print( arithmeticCalculator(firstNumber: 5, secondNumber: 3, operator: '-'));
  print( arithmeticCalculator(firstNumber: 2, secondNumber: 3, operator: '*'));
  print( arithmeticCalculator(firstNumber: 10, secondNumber: 2, operator: '/'));
}

num arithmeticCalculator(
    {required int firstNumber,
    required int secondNumber,
    required String operator}) {
  switch (operator) {
    case '+':
      return firstNumber + secondNumber;
    case '-':
      return firstNumber - secondNumber;
    case '*':
      return firstNumber * secondNumber;
    case '/':
      if (secondNumber == 0) {
        print('cannot divide by zero');
        return 0;
      }
      return firstNumber / secondNumber;
    default:
      print('incorrect operator');
      return 0;
  }
}
