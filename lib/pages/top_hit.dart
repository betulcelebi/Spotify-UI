import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_ui/pages/top_play.dart';

class TopHit extends StatefulWidget {
  const TopHit({super.key});

  @override
  State<TopHit> createState() => _TopHitState();
}

class _TopHitState extends State<TopHit> {
  List<String> playlist = [
    "assets/Group25.png",
    "assets/Group26.png",
    "assets/Group27.png",
    "assets/Group28.png",
  ];
  List<String> songlist = [
    "STAY",
    "Wishing Well",
    "First Class",
    "Unstable ",
  ];
  List<String> singerlist = [
    "The Kid LAROI,Justin Bieber",
    "Juice WLRD",
    "Jack Harlow",
    "Justin Bieber,The Kid LAROI ",
  ];
  List<String> favorite = [
    "assets/greenh.png",
    "assets/greenh.png",
    "assets/whiteheart.png",
    "assets/whiteheart.png",
  ];
  List<String> vertical = [
    "assets/more-vertical.png",
    "assets/more-vertical.png",
    "assets/more-vertical.png",
    "assets/more-vertical.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: Image.asset("assets/chevron-left.png")),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset("assets/heart.png")),
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/more-vertical.png"))
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  //alignment: Alignment.topCenter,
                  width: double.infinity,
                  height: 378,
                  child: Image.asset(
                    "assets/redphoto.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 42, top: 260, right: 180),
                  alignment: Alignment.bottomLeft,
                  child: Image.asset("assets/today.png"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 42, top: 295, right: 115),
                  alignment: Alignment.center,
                  child: Image.asset("assets/tophits.png"),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, top: 347, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 2),
                            child: Image.asset("assets/like.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Image.asset("assets/likes.png"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 35, top: 347, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 2),
                            child: Image.asset("assets/time.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Image.asset("assets/2hr.png"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(top: 325, right: 10),
                  child: SizedBox(
                    child: IconButton(
                      iconSize: 70,
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/play.png",
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 24, right: 260, top: 0),
              child: Text(
                "Featuring",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            MediaQuery.removePadding(
              context: context,
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: playlist.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: index == 2
                          ? () {
                              Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const TopPlay(),
                                ),
                              );
                            }
                          : () {
                              null;
                            },
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        
                        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color.fromARGB(255, 71, 70, 70)))),
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 24),
                                    child: Image.asset(playlist[index])),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        songlist[index],
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5, top: 8),
                                      child: Text(
                                        singerlist[index],
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 5),
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(favorite[index]),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(right: 2),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(vertical[index]),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
