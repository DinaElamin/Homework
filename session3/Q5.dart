/*5. Class Creation and Dot Operator Usage:
Create a class with a few properties and methods. Instantiate the class and use the dot operator to
access and print its properties and methods. */
void main() {
  animal animal1 = animal();
  animal animal2 = animal();
  animal1.name = 'cat';
  animal1.kind = 'pet animal';
  animal2.name = 'lion';
  animal2.kind = 'wild animal';
  print(animal1.name);
  print(animal1.kind);
  print(animal2.name);
  print(animal2.kind);
  animal1.eat();
  animal1.walking();
}

class animal {
  String? name;
  String? kind;
  void walking() {
    print('this animal can walk');
  }

  void eat() {
    print('this animal can eat');
  }
}
