import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:app_language/model/numbers.dart';

class Items extends StatelessWidget {
  const Items({Key? key, required this.number, required this.color})
      : super(key: key);
  final Color color;
  final Numbers number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jptext,
                  style: TextStyle(color: Colors.white),
                ),
                Text(number.entext, style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));
                final player2 = AudioPlayer();
                player2.play(AssetSource(number.sound));
              },
              icon: Icon(Icons.play_arrow_sharp),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
