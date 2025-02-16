/*6. Working with Maps - Student Details:
- Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
and remove entries from the map, printing the map after each operation.
- Task 2: Iterate over the map and print each key-value pair. */
void main() {
  Map<String, dynamic> students = {'name': 'ahmed', 'age': 20, 'grade': 80};
  students.addAll({'gender': 'male'});
  students['age'] = 22;
  students.remove('gender');
  print(students);
  students.forEach((k, v) => print(" $k, $v"));
}
