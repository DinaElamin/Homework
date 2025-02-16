/*3. To-Do List App:
Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops. */

void main() {
  addtask(
    item: {
      'description': 'dart home work',
      'due date': "17 / 2 / 2025",
      'completion status': true,
    },
  );
  addtask(item: {
    'description': 'revision on loops',
    'due date': '18 / 2 / 2025',
    'completion status': false,
  });
  addtask(item: {
    'description': 'study oop',
    'due date': '19 / 2 / 2025',
    'completion status': true,
  });
  displaytasks();
  removetask(item: {
    'description': 'revision on loops',
    'due date': '18 / 2 / 2025',
    'completion status': false,
  });
}

List<Map<String, dynamic>> Tasks = [];
void addtask({required Map<String, dynamic> item}) {
  if (item.isNotEmpty) {
    Tasks.add(item);
    print('Added:$item');
  } else {
    print('cannot add an empty item');
  }
}

void removetask({required Map<String, dynamic> item}) {
  if (item.isNotEmpty && Tasks.contains(item)) {
    Tasks.remove(item);
    print('$item is removed succefully');
  } else {
    print('item not found');
  }
}

List<Map<String, dynamic>> displaytasks() {
  if (Tasks.isEmpty) {
    print('no item to display');
    return [];
  } else {
    print('To Do List');
    Tasks.forEach((item) {
      print('$item');
    });
    return Tasks;
  }
}
