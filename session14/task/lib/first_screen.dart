import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class firstScreen extends StatelessWidget {
  const firstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/Group 440.svg'),
          SizedBox(
            height: 80,
          ),
          Text('Welcome to Fresh Fruits',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Text(
            'Grocery application',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          ElevatedButton(onPressed: () {}, child: Text("NEXT"))
        ],
      ),
    );
  }
}
