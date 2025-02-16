/*2. Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values. */


void main() {
  addItem(item: 'Apples');
  addItem(item: 'Bananas');
  addItem(item: 'Carrots');
  displayItems();
  removeItem(item: 'Bananas');
  displayItems();
}
  List<String> items = [];

  void addItem({required String? item}) {
    if (item != null ) {
      items.add(item);
      print('Added: $item');
    } else {
      print('Cannot add null item.');
    }
  }

  void removeItem({required String? item}) {
    if (item != null && items.contains(item)) {
      items.remove(item);
      print(' $item removed successfully');
      
    } else {
      print('Item not found');
     
    }
  }

  List<String?> displayItems() {
    if (items.isEmpty) {
      print('No items in the grocery list.');
      return [];
    } else {
      print('Grocery Items:');
      for (var item in items) {
        print('$item');
      }
      return items;
    }
  }
