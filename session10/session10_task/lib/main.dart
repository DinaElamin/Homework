import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text(
            "Travel Destination",
          ),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.favorite_outline),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.share),
            )
          ],
        ),
        body: ListView(physics: BouncingScrollPhysics(), children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/image.jpg'),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: const Color(0XFFf7f2f9))]),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Oeschinen Lake',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Text('Campground',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                        subtitle: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.deepOrange,
                            ),
                            Text('Kandersteg,Switzerland')
                          ],
                        ),
                        trailing: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFffeaed)),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Icon(
                              Icons.star,
                              color: Colors.deepOrange,
                            ),
                            Text(
                              '4.1',
                              style: TextStyle(color: Colors.deepOrange),
                            )
                          ]),
                        ),
                      ),
                      Divider(
                        thickness: .8,
                        endIndent: 12,
                        indent: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Color(0XFFe0e8f9)
                                // borderRadius: BorderRadius.circular(50),
                                ),
                            child: Icon(
                              Icons.call,
                              color: Colors.blueAccent,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Color(0XFFe6eae9)
                                // borderRadius: BorderRadius.circular(50),
                                ),
                            child: Icon(
                              Icons.navigation,
                              color: Colors.green,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Color(0XFFefddf3)
                                // borderRadius: BorderRadius.circular(50),
                                ),
                            child: Icon(
                              Icons.share,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('CALL',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold)),
                          Text('ROUTE',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold)),
                          Text('SHARE',
                              style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        const Color.fromARGB(255, 126, 183, 229),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    Text(
                      'About',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color(0XFFf0f7ff),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 5))
                  ]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.file_copy,
                          color: Colors.blue,
                        ),
                        title: Text(
                          '1,578m above sea level',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      Text(
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                          'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernesw Alps. Situated 1,578 meters above sea level ,it is one of the larger Alpine Lakes .Agondola ride from Kandersteg , followed by a half-hour  walk through pasture and pine forest leads you to the lake which warms to 20 degree celsius in the summer . activities enjoyed here include rowing and riding the summer toboggon run.')
                    ],
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
