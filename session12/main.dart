void main() {}

class Product {
  String id;
  String name;
  double price;
  String category;
  int Quantity;

  Product(this.id, this.name, this.price, this.category, this.Quantity);

  double applyDiscount(double percentage) {
    return price - (price * percentage / 100);
  }
}

class PhysicalProduct extends Product {
  String dimensions;
  String weight;

  PhysicalProduct(String id, String name, double price, String category,
      int Quantity, this.dimensions, this.weight)
      : super(id, name, price, category, Quantity);
}

class DigitalProduct extends Product {
  String downloadLink;

  DigitalProduct(String id, String name, double price, String category,
      int Quantity, this.downloadLink)
      : super(id, name, price, category, Quantity);
}

class Inventory {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  List<Product> filterByCategory(String category) {
    return products.where((product) => product.category == category).toList();
  }

  List<Product> filterByType(Type productType) {
    return products
        .where((product) => product.runtimeType == productType)
        .toList();
  }
}
