/* OOP, Constructors & Getters
Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area*/
void main(List<String> args) {
  Rectangle rectangle = Rectangle(20, 10);
  print(rectangle.area);
}

class Rectangle {
  double _width;
  double _height;
  Rectangle(this._height, this._width);
  double get area => this._width * this._height;
}
