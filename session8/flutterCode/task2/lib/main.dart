import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Center(
            child: Container(
              height: 500,
              width: 380,
              color: const Color(0xFFbbdefa),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 80,
                          color: const Color(0xFFee534f),
                          child: Center(
                            child: Text('A',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 80,
                          color: const Color(0xFFffa827),
                          child: Center(
                            child: Text('B',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 80,
                          color: const Color(0xFFfdd733),
                          child: Center(
                            child: Text('C',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 180,
                    width: 350,
                    color: const Color(0xFFc5cae8),
                    child: Column(
                      children: [
                        Text(
                          "Fancy Section",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF4958b8)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                            spacing: 20,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                color: const Color(0xFF7e57c2),
                                child: Center(
                                  child: Text('1',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: const Color(0XFFaa47bc),
                                child: Center(
                                  child: Text('2',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: const Color(0XFF9675ce),
                                child: Center(
                                  child: Text('3',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                            spacing: 20,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                color: const Color(0XFFb968c7),
                                child: Center(
                                  child: Text('4',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: const Color(0XFFb39ddb),
                                child: Center(
                                  child: Text('5',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: const Color(0XFFcf93d9),
                                child: Center(
                                  child: Text('6',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Info Cards',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF4958b8)),
                  ),
                  Row(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 90,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '23',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFFf22a498)),
                              ),
                              Text(
                                'Active',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0XFFf22a498)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '20',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFFf9b017)),
                              ),
                              Text(
                                'Pending',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0XFFf9b017)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '7',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF42a147)),
                              ),
                              Text(
                                'Complete',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0XFF42a147)),
                              )
                            ],
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ));
  }
}
