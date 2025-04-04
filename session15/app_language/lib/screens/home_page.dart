import 'package:flutter/material.dart';
import 'package:app_language/widgets/category.dart';
import 'package:app_language/screens/Family.dart';
import 'package:app_language/screens/colors.dart';
import 'package:app_language/screens/numbers.dart';
import 'package:app_language/screens/phrases.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6B4226),
        title: Text("Toku"),
      ),
      body: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => numbersPage()));
          },
          child: Categorey(
            text: "Numbers",
            backcolor: Colors.orange,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return FamilyMember();
            }));
          },
          child: Categorey(
            text: "Family Members",
            backcolor: Color(0xff458B00),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
              return ColorsPage();
            })));
          },
          child: Categorey(
            text: "Colors",
            backcolor: const Color.fromARGB(255, 108, 26, 123),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PhrasesPage();
            }));
          },
          child: Categorey(
            text: "Phrases",
            backcolor: Color.fromARGB(255, 64, 133, 150),
          ),
        ),
      //TextButton(onPressed: (){}, child: )
      ]),
      backgroundColor: Color.fromARGB(255, 230, 217, 194),
    );
  }
}
