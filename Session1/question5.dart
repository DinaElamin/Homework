/*Question 5
What is the difference between var and dynamic in Dart? Provide an example of
each.*/
//********** first difference betwwen var and dynamic is var is a keyword but dynamic is a data type
//********** var can't change type of variable but dynamic can change type of variable
void main() {
  var number1 = 22.5;
  //number1 = true; variable number1 is type of double can't assign to variable of type boolean
  dynamic number2 = 22.5;
  //number2 = true;variable number2 is type of double can assign to variable of type boolean
}
