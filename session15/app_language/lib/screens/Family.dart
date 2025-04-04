import 'package:flutter/material.dart';
import 'package:app_language/widgets/item.dart';
import 'package:app_language/model/numbers.dart';

class FamilyMember extends StatelessWidget {
  FamilyMember({Key? key}) : super(key: key);

  final List<Numbers> member = [
    Numbers(
        image: "assets/images/family_members/family_father.png",
        jptext: "Chichioya",
        entext: "father",
        sound: "sounds/family_members/father.wav"),
    Numbers(
        image: "assets/images/family_members/family_daughter.png",
        jptext: "Chichioya",
        entext: "daughter",
        sound: "sounds/family_members/daughter.wav"),
    Numbers(
        image: "assets/images/family_members/family_grandfather.png",
        jptext: "Chichioya",
        entext: "grandfather",
        sound: "sounds/family_members/grand_father.wav"),
    Numbers(
        image: "assets/images/family_members/family_mother.png",
        jptext: "Chichioya",
        entext: "mother",
        sound: "sounds/family_members/mother.wav"),
    Numbers(
        image: "assets/images/family_members/family_grandmother.png",
        jptext: "Chichioya",
        entext: "grandmother",
        sound: "sounds/family_members/grand_mother.wav"),
    Numbers(
        image: "assets/images/family_members/family_older_brother.png",
        jptext: "Chichioya",
        entext: "olderbrother",
        sound: "sounds/family_members/older_bother.wav"),
    Numbers(
        image: "assets/images/family_members/family_older_sister.png",
        jptext: "Chichioya",
        entext: "oldersister",
        sound: "sounds/family_members/older_sister.wav"),
    Numbers(
        image: "assets/images/family_members/family_son.png",
        jptext: "Chichioya",
        entext: "son",
        sound: "sounds/family_members/son.wav"),
    Numbers(
        image: "assets/images/family_members/family_younger_brother.png",
        jptext: "Chichioya",
        entext: "youngerbrother",
        sound: "sounds/family_members/younger_brohter.wav"),
    Numbers(
        image: "assets/images/family_members/family_younger_sister.png",
        jptext: "Chichioya",
        entext: "youngersister",
        sound: "sounds/family_members/younger_sister.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members"),
        backgroundColor: const Color(0xff6B4226),
      ),
      body: ListView.builder(
        itemCount: member.length,
        itemBuilder: (context, index) {
          return Items(
            color: Colors.green,
            number: member[index],
          );
        },
      ),
    );
  }
}
