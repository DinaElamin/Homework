import 'package:flutter/material.dart';
import 'package:task/first_screen.dart';
import 'package:task/second_screen.dart';
import 'package:task/third_screen.dart';

class onboardingScreens extends StatefulWidget {
  const onboardingScreens({super.key});

  @override
  State<onboardingScreens> createState() => _onboardingScreensState();
}

class _onboardingScreensState extends State<onboardingScreens> {
  PageController _controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children: [firstScreen(), SecondScreen(), ThirdScreen()],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customIndicator(active: index == 0),
                SizedBox(
                  width: 5,
                ),
                customIndicator(active: index == 1),
                SizedBox(
                  width: 5,
                ),
                customIndicator(active: index == 2)
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

class customIndicator extends StatelessWidget {
  const customIndicator({super.key, required this.active});
  final bool active;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 250),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:
              active ? Colors.green : const Color.fromARGB(255, 210, 209, 209)),
      width: 50,
      height: 10,
    );
  }
}
