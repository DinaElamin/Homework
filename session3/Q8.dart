/*  Range Checker Program:
Write a Dart program that checks if a number is within a specified range using logical operators and
prints the result.*/
import 'dart:io';

void main() {
  print('Enter a number');
  int number = int.parse(stdin.readLineSync()!);
  print('Enter the lower limit of the range:');
  int lowerLimit = int.parse(stdin.readLineSync()!);
  print('Enter the upper limit of the range:');
  int upperLimit = int.parse(stdin.readLineSync()!);
  bool isWithinRange = number >= lowerLimit && number <= upperLimit;
  if (isWithinRange) {
    print('$number is within the range of $lowerLimit and $upperLimit.');
  } else {
    print('$number is outside the range of $lowerLimit and $upperLimit.');
  }
}