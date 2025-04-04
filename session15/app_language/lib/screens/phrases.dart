import 'package:flutter/material.dart';
import 'package:app_language/widgets/itemphrases.dart';
import 'package:app_language/model/numbers.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({Key? key}) : super(key: key);
  final List<Phrases> phra = [
    Phrases(
        entext: "dont forget to subscribe",
        jptext: "Kodoku suru Koto o wasurenaide kudasai",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Phrases(
        entext: "dont forget to subscribe",
        jptext: "Kodoku suru Koto o wasurenaide kudasai",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Phrases(
        entext: "dont forget to subscribe",
        jptext: "Kodoku suru Koto o wasurenaide kudasai",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Phrases(
        entext: "dont forget to subscribe",
        jptext: "Kodoku suru Koto o wasurenaide kudasai",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Phrases(
        entext: "dont forget to subscribe",
        jptext: "Kodoku suru Koto o wasurenaide kudasai",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Phrases(
        entext: "dont forget to subscribe",
        jptext: "Kodoku suru Koto o wasurenaide kudasai",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Phrases(
        entext: "dont forget to subscribe",
        jptext: "Kodoku suru Koto o wasurenaide kudasai",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Phrases(
        entext: "dont forget to subscribe",
        jptext: "Kodoku suru Koto o wasurenaide kudasai",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Phrases(
        entext: "dont forget to subscribe",
        jptext: "Kodoku suru Koto o wasurenaide kudasai",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Phrases"),
          backgroundColor: const Color(0xff6B4226),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ItemPhrases(phrase: phra[index]);
          },
          itemCount: phra.length,
        ));
  }
}
