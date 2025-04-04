import 'package:flutter/material.dart';

class Categorey extends StatelessWidget {
  Categorey({this.text, this.backcolor});
 final String? text;
  final Color? backcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 16),
      width: double.infinity,
      height: 60,
      child: Text(
        text!,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: backcolor,
    );
  }
}
