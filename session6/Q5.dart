void main(List<String> args) {
  print(FindLongestWord('my name is dina'));
}

String FindLongestWord(String sentance) {
  List<String> sentanceTowords = sentance.split('');
  String longstword = '';
  for (var element in sentanceTowords) {
    if (element.length > longstword.length) {
      longstword = element;
    }
  }
  return longstword;
}
