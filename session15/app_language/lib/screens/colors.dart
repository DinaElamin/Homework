import 'package:flutter/material.dart';
import 'package:app_language/widgets/ItemColor.dart';
import 'package:app_language/model/numbers.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({Key? key}) : super(key: key);
  final List<color> colorsList = [
    color(
        image: "assets/images/colors/color_black.png",
        entext: "black",
        jptext: "Burakku",
        sound: "sounds/colors/black.wav"),
    color(
        image: "assets/images/colors/color_brown.png",
        entext: "brown",
        jptext: "Chairo",
        sound: "sounds/colors/brown.wav"),
    color(
        image: "assets/images/colors/color_dusty_yellow.png",
        entext: "dusty yellow",
        jptext: "Hokori ppi kiiro",
        sound: "sounds/colors/dusty_yellow.wav"),
    color(
        image: "assets/images/colors/color_gray.png",
        entext: "gray",
        jptext: "Gure",
        sound: "sounds/colors/gray.wav"),
    color(
        image: "assets/images/colors/color_green.png",
        entext: "green",
        jptext: "Midori",
        sound: "sounds/colors/green.wav"),
    color(
        image: "assets/images/colors/color_red.png",
        entext: "red",
        jptext: "Aka",
        sound: "sounds/colors/red.wav"),
    color(
        image: "assets/images/colors/color_white.png",
        entext: "white",
        jptext: "Shiroi",
        sound: "sounds/colors/white.wav"),
    color(
        image: "assets/images/colors/yellow.png",
        entext: "yellow",
        jptext: "Burakku",
        sound: "sounds/colors/yellow.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors"),
        backgroundColor: const Color(0xff6B4226),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemColor(
            col: colorsList[index],
          );
        },
        itemCount: colorsList.length,
      ),
    );
  }
}
