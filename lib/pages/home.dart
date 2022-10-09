import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> music = [
    ("Hip Hop Mix"),
    ("Moody Mix"),
    ("House Mix"),
  ];
  List<String> singer = [
    ("Juice Wrld, Drake, Kendrick lamar and more... "),
    ("Joji, The Kid LAROI, Tate McRae and more..."),
    ("Martin Garrix, The Chainsmoker and more..."),
  ];

  List<String> images = [
    "assets/item1.png",
    "assets/item2.png",
    "assets/item3.png",
  ];
  List<String> photos = [
    "assets/Ellipse1.png",
    "assets/Ellipse2.png",
    "assets/Ellipse3.png",
  ];
  List<String> verticalshape=[
    "assets/p2.png",
    "assets/s2.png",
    "assets/g2.png"
  ];
    List<String> horizontolshape=[
    "assets/p1.png",
    "assets/s1.png",
    "assets/g1.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 350,
              height: 30,
              margin: EdgeInsets.only(
                top: 88,
                left: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(1),
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/more_vertical.png",
                      ))
                ],
              ),
            ),
            Container(
              width: 350,
              height: 43,
              margin: EdgeInsets.only(top: 25, left: 20, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      alignment: Alignment.centerLeft,
                      onPressed: () {},
                      icon: Image.asset("assets/lightning.png")),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: 'Weekly',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      children: const <TextSpan>[
                        TextSpan(
                            text: ' Music!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 230,
                        height: 113,
                        margin: EdgeInsets.only(top: 28, left: 40),
                        child: Image.asset("assets/Rectangle_2.png"),
                      ),
                      Container(
                        width: 169,
                        height: 13,
                        margin: EdgeInsets.only(top: 13, left: 40),
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "30 Fresh music for you every week",
                          style: TextStyle(
                              color: Color.fromARGB(255, 176, 173, 173),
                              fontSize: 11),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 230,
                        height: 113,
                        margin: EdgeInsets.only(top: 28, right: 100, left: 21),
                        child: Image.asset("assets/Rectangle_3.png"),
                      ),
                      Container(
                        width: 169,
                        height: 13,
                        margin: EdgeInsets.only(top: 13, right: 30),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "New songs every friday  ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 176, 173, 173),
                              fontSize: 11),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 28, left: 24, right: 100),
              child: Text(
                "Your Top Mixes",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              width: 800,
              height: 210,
              child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: 155,
                    height: 210,
                    margin:
                        EdgeInsets.only(top: 13, right: 4, left: 15, bottom: 4),
                    decoration: BoxDecoration(
                        color: Color(0xff0E0E0F),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                images[index],
                                alignment: Alignment.center,
                                width: 125,
                                height: 113,
                              ),
                            ),
                            Positioned(bottom: 20, child: Image.asset(verticalshape[index])),
                            Positioned(bottom: 0, child: Image.asset(horizontolshape[index]))

                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 12, left: 15, right: 62, bottom: 2),
                          child: Text(
                            music[index],
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(left: 15, right: 5, bottom: 5,top: 3),
                          child: Text(
                            singer[index],
                            style: TextStyle(fontSize: 11, color: Color.fromARGB(255, 187, 185, 185)),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 300,
              height: 30,
              margin: EdgeInsets.only(top: 28, left: 28, bottom: 7),
              child: Text(
                "Suggested artists",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 800,
              height: 195,
              child: ListView.builder(
                itemCount: photos.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: 155,
                    height: 195,
                    margin:
                        EdgeInsets.only(top: 7, right: 4, left: 15, bottom: 4),
                    decoration: BoxDecoration(
                        color: Color(0xff0E0E0F),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Image.asset(  
                            photos[index],
                            alignment: Alignment.center,
                            width: 125,
                            height: 125,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
