void main(List<String> args) {
  print(CheckLeapYear(2025));
}

String CheckLeapYear(int year) {
  if (year % 4 == 0 && year % 100 != 0) {
    return 'this is leap year';
  } else if ((year % 400 == 0)) {
    return 'this is leap year';
  }
  return 'this isnot leap year';
}
