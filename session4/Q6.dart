/*6. Null Safety, Encapsulation & ClassesCreate a class `Person` with the following attributes:
- `String name`
- `int? age` (nullable)
- `bool isStudent` (default is false)
Implement:
- A constructor that initializes `name` and `age`.
- A method `displayInfo()` that prints the person's details.
In `main()`, create an instance of `Person` and call `displayInfo()`. */
void main(List<String> args) {
  Person firstPerson = Person(name: 'dina', age: 22);
  firstPerson.displayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent = false;
  Person({this.age, required this.name});
  void displayInfo() {
    print(this.name);
    print(this.age);
    print(this.isStudent);
  }
}
