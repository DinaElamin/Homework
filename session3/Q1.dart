/*1. Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers). */
import 'dart:io';

void main() {
  print('Please Enter First Number');
  int firstNumber = int.parse(stdin.readLineSync()!);
  print('Please Enter second Number');
  int secondNumber = int.parse(stdin.readLineSync()!);
  addition(firstNumber, secondNumber);
  subtraction(firstNumber, secondNumber);
  multiplication(firstNumber, secondNumber);
  division(firstNumber, secondNumber);
}

void addition(int num1, int num2, [int num3 = 0]) {
  int result = num1 + num2 + num3;
  print('$num1 + $num2 = $result');
}

void subtraction(int num1, int num2) {
  int result = num1 - num2;
  print('$num1 - $num2 = $result');
}

void multiplication(int num1, int num2, [int num3 = 1]) {
  int result = num1 * num2 * num3;
  print('$num1 * $num2 = $result');
}

void division(int num1, int num2) {
  num result = num1 / num2;
  print('$num1 / $num2 = $result');
}
