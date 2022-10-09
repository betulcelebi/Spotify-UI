import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  List<String> playlist = [
    "assets/playlist1.png",
    "assets/playlist2.png",
    "assets/playlist3.png",
    "assets/playlist4.png"
  ];
  List<String> playtext = [
    "Playlists #1",
    "Playlists #2",
    "Playlists #3",
    "Playlists #4"
  ];
  List<String> iconlist = [
    "assets/favorite.png",
    "assets/people.png",
    "assets/microfon.png",
  ];
  List<String> iconname = [
    "Liked Songs",
    "Followed Artists",
    "Followed Podcast ",
  ];
  List<String> direction = [
    "assets/chevron.png",
    "assets/chevron.png",
    "assets/chevron.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 93, left: 28, bottom: 5),
                    child: Text(
                      "Your Library",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    )),
                Container(
                  margin: EdgeInsets.only(
                      top: 93, left: 105,  bottom: 5),
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset("assets/icon.png")),
                ),
                Container(
                  margin: EdgeInsets.only(left: 1, top: 93, bottom: 5),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/profile.png")),
                ),
              ],
            ),
            GridView.builder(
              
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  
                  decoration: BoxDecoration(
                      color: Color.fromARGB(66, 61, 60, 60),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        child: Image.asset(playlist[index]),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 11),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          playtext[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.05,
                mainAxisSpacing: 12,
                crossAxisSpacing: 10,
              ),
            ),
            Container(
              width: 50,
              height: 18,
              margin: EdgeInsets.only(left: 165, right: 180, top: 11),
              child: Text(
                "See all",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 118,
              height: 21,
              margin: EdgeInsets.only(left: 23, right: 249, top: 25,),
              child: Text(
                "Your Activities",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 800,
              height: 500,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: iconlist.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            child: Row(
                              children: [
                                SizedBox(width: 10),
                                IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(iconlist[index])),
                                SizedBox(width: 30),
                                Text(
                                  iconname[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Image.asset(direction[index]),
                          )
                        ],
                      ),
                      Divider(color: Color.fromARGB(255, 165, 163, 163),)
                    ],
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
