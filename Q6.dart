void main(List<String> args) {
  print(reverseString('hello world'));
}

String reverseString(String input) {
  return input.split('').reversed.join('');
}
