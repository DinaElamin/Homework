/*10. For-Each Loop, Lists & String Manipulation
Create a list of 5 words.
- Iterate through the list using a for-each loop.
- Convert each word to uppercase.
- Print each word in uppercase. */
void main(List<String> args) {
  List<String> words = ['beautiful', 'nice', 'great', 'funny'];
  words.forEach((elemnt) {
    elemnt.toUpperCase();
    print(elemnt.toUpperCase());
  });
}
