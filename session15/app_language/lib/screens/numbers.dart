import 'package:flutter/material.dart';
import 'package:app_language/widgets/item.dart';
import 'package:app_language/model/numbers.dart';

class numbersPage extends StatelessWidget {
   numbersPage({Key? key}) : super(key: key);
 final List<Numbers> number = [
    Numbers(
        image: "assets/images/numbers/number_one.png",
        jptext: "ichi",
        entext: "one",
        sound: "sounds/numbers/number_one_sound.mp3"),
    Numbers(
        image: "assets/images/numbers/number_two.png",
        jptext: "ni",
        entext: "two",
        sound: "sounds/numbers/number_two_sound.mp3"),
    Numbers(
        image: "assets/images/numbers/number_three.png",
        jptext: "san",
        entext: "three",
        sound: "sounds/numbers/number_three_sound.mp3"),
    Numbers(
        image: "assets/images/numbers/number_four.png",
        jptext: "shi",
        entext: "four",
        sound: "sounds/numbers/number_four_sound.mp3"),
    Numbers(
        image: "assets/images/numbers/number_five.png",
        jptext: "go",
        entext: "five",
        sound: "sounds/numbers/number_five_sound.mp3"),
    Numbers(
        image: "assets/images/numbers/number_six.png",
        jptext: "roku",
        entext: "six",
        sound: "sounds/numbers/number_six_sound.mp3"),
    Numbers(
        image: "assets/images/numbers/number_seven.png",
        jptext: "shichi",
        entext: "seven",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    Numbers(
        image: "assets/images/numbers/number_eight.png",
        jptext: "hachi",
        entext: "eight",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    Numbers(
        image: "assets/images/numbers/number_nine.png",
        jptext: "kyu",
        entext: "nine",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    Numbers(
        image: "assets/images/numbers/number_ten.png",
        jptext: "ju",
        entext: "ten",
        sound: "sounds/numbers/number_ten_sound.mp3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Numbers"),
          backgroundColor: const Color(0xff6B4226),
        ),
        body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return Items(color: Colors.orange, number: number[index]);
          },
        ));
  }

  // List<Widget> getitems(List<Numbers> number) {
  //   List<Widget> itemlist = [];
  //   for (var i = 0; i < number.length; i++) {
  //     itemlist.add(items(number: number[i]));
  //   }
  //   return itemlist;
  // }
}
