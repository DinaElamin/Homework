import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:app_language/model/numbers.dart';

class ItemColor extends StatelessWidget {
  ItemColor({Key? key, this.col}) : super(key: key);
 final color? col;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: const Color.fromARGB(255, 108, 26, 123),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(col!.image)),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text((col!.jptext), style: TextStyle(color: Colors.white)),
                Text(col!.entext, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(col!.sound));
                },
                icon: const Icon(Icons.play_arrow_sharp, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
