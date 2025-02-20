/*3. Lists, Loops & If Conditions
Create a list of numbers. Iterate over the list and:
- If a number is even, print "Even: <number>".
- If a number is odd, print "Odd: <number>". */
void main(List<String> args) {
  List<num> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var i = 0; i < numbers.length; i++) {
    if (i.isEven) {
      print('Even : <$i>');
    } else {
      print('Odd : <$i>');
    }
  }
}
