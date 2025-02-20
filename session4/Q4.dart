/*4. Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their
prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a
given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result. */

void main(List<String> args) {
  print(getPrice('apple'));
  print(getPrice('guave'));
}

int getPrice(String fruitName) {
  if (fruitDetails.containsKey(fruitName)) {
    return fruitDetails[fruitName]!;
  } else {
    return -1;
  }
}

Map<String, int> fruitDetails = {
  'apple': 70,
  'orange': 20,
  'banana': 30,
};
