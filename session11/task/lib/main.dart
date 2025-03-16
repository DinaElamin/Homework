import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color textColor = Color(0xff80568b);
  Color containerColor = Color(0xff9c27af);
  List<Color> colors = [
    Color(0xffaf50c1),
    Color(0xffca8ad6),
    Color(0xffedd8f2)
  ];
  int num = 0;
  bool isselected = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: colors)),
          child: Scaffold(
            floatingActionButton: GestureDetector(
              onTap: () {
                setState(() {
                  num++;
                });
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text("increment",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w400))
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                'Interactive UI Demo',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Card(
                    shadowColor: Colors.black,
                    child: Container(
                      width: 200,
                      height: 120,
                      decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(num.isEven ? 'Even : ' : 'Odd : ',
                              style: TextStyle(
                                  fontSize: isselected ? 30 : 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                          Text("$num",
                              style: TextStyle(
                                  fontSize: isselected ? 30 : 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                  ),
                ),
                Text('Counter Value',
                    style: TextStyle(
                        fontSize: 25,
                        color: textColor,
                        fontWeight: FontWeight.w400)),
                Text('$num',
                    style: TextStyle(
                        fontSize: 25,
                        color: textColor,
                        fontWeight: FontWeight.w400)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (textColor == Color(0xff80568b)) {
                            textColor = Color(0xfffd9800);
                            containerColor = Color(0xfffe9800);
                            colors = [
                              Color(0xfffdac34),
                              Color(0xfffebb59),
                              Color(0xffffe5bd)
                            ];
                          } else if (textColor == Color(0xfffd9800)) {
                            textColor = Color(0xffe91c64);
                            containerColor = Color(0xffe91c64);
                            colors = [
                              Color(0xffed4a82),
                              Color(0xfff488af),
                              Color(0xfffac6d9)
                            ];
                          } else if (textColor == Color(0xffe91c64)) {
                            textColor = Color(0xff4050b5);
                            containerColor = Color(0xff4050b5);
                            colors = [
                              Color(0xff6574c5),
                              Color(0xff8c97d2),
                              Color(0xffc1c8e6)
                            ];
                          } else if (textColor == Color(0xff4050b5)) {
                            textColor = Color(0xff80568b);
                            containerColor = Color(0xff9c27af);
                            colors = [
                              Color(0xffaf50c1),
                              Color(0xffca8ad6),
                              Color(0xffedd8f2)
                            ];
                          }
                        });
                      },
                      child: Row(children: [
                        Icon(Icons.color_lens),
                        Text(
                          "change Color",
                          style: TextStyle(color: textColor),
                        ),
                      ]),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (isselected ==true) {
                              isselected = false;
                            } else {
                              isselected=true;
                            }
                          });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.text_fields_sharp),
                            Text("change Size",
                                style: TextStyle(color: textColor))
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
