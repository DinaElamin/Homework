import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:app_language/model/numbers.dart';

class ItemPhrases extends StatelessWidget {
  const ItemPhrases({Key? key, required this.phrase}) : super(key: key);
  final Phrases phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Color.fromARGB(255, 64, 133, 150),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(phrase.jptext, style: TextStyle(color: Colors.white)),
                Text(phrase.entext, style: TextStyle(color: Colors.white)),
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
                  player.play(AssetSource(phrase.sound));
                },
                icon: const Icon(Icons.play_arrow_sharp, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
