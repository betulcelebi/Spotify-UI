import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopPlay extends StatefulWidget {
  const TopPlay({super.key});

  @override
  State<TopPlay> createState() => _TopPlayState();
}

class _TopPlayState extends State<TopPlay> {
  List<String> toplist = [
    "assets/three.png",
    "assets/one.png",
    "assets/two.png",
  ];
  List<String> play = [
    "assets/shuffle.png",
    "assets/Unionl.png",
    "assets/play-pause-button.png",
    "assets/Union.png",
    "assets/repeat.png",
  ];

  double currentslider = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: Image.asset("assets/chevron-bottom.png")),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 85),
            alignment: Alignment.center,
            child: Text(
              "Today’s Top Hits",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/more-vertical.png")),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: SizedBox(
                width: 800,
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: toplist.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 15, left: 8, top: 10),
                      child: Image.asset(toplist[index]),
                    );
                  },
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 7),
                  child: Text(
                    "First Class",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 7),
                  child: Text(
                    "Jack Harlow",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 6,
              margin: EdgeInsets.only(top: 36, bottom: 2),
              child: Slider(
                activeColor: Colors.green,
                inactiveColor: Colors.white,
                thumbColor: Colors.white,
                
                value: currentslider,
                max: 100,
                label: currentslider.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    currentslider = value;
                  });
                },
              ),
            ),
            Container(
              height: 10,
              margin: EdgeInsets.only(left: 20, right: 20, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "0.22",
                    style: TextStyle(
                        color: Color.fromARGB(255, 153, 152, 152),
                        fontSize: 10),
                  ),
                  Text(
                    "2.53",
                    style: TextStyle(
                        color: Color.fromARGB(255, 153, 152, 152),
                        fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              width: 342,
              height: 70,
              margin: EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/shuffle.png"),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Image.asset("assets/Unionl.png")),
                  IconButton(
                    iconSize: 60,
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/play-pause-button.png",
                        
                        fit: BoxFit.cover,alignment: Alignment.center,
                      )),
                  IconButton(
                      onPressed: () {}, icon: Image.asset("assets/Union.png")),
                  IconButton(
                      onPressed: () {}, icon: Image.asset("assets/repeat.png"))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                  margin: EdgeInsets.only(right: 11),
                  child: Image.asset("assets/splach screen Icon.png")),
                Text("Airpods Pro", style: TextStyle(color: Color.fromARGB(255, 141, 137, 137), fontSize: 15, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Container(
              width: 300,
              height: 55,
              margin: EdgeInsets.only(top: 35),
              decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(31), color: Color.fromARGB(255, 8, 8, 8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {
                    
                  }, icon: Image.asset("assets/fav.png")),
                  IconButton(onPressed: () {
                    
                  }, icon: Image.asset("assets/artist.png")),
                  IconButton(onPressed: () {
                    
                  }, icon: Image.asset("assets/xx.png")),
                  IconButton(onPressed: () {
                    
                  }, icon: Image.asset("assets/devices.png"))
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
