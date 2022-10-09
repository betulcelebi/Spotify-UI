import 'package:flutter/material.dart';
import 'package:spotify_ui/pages/top_hit.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var _controller = TextEditingController();
  List<dynamic> gradients = [
    [Color(0xffE02FCF), Color(0xff00C188)],
    [Color(0xff0A3CEC), Color(0xff4DD4AC)],
    [Color(0xff0A3CEC), Color(0xffD9DD01)],
    [Color(0xff0E31AE), Color(0xffDD1010)]
  ];
  List<String> text = [
    ("Made For You"),
    ("Charts"),
    ("Discover"),
    ("New Release")
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
                    "Search",
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
              margin: EdgeInsets.only(top: 25, left: 24, right: 24),
              decoration: BoxDecoration(
                  color: Color.fromARGB(14, 189, 190, 194),
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Image.asset("assets/icon.png")),
                  SizedBox(
                    height: 43,
                    width: 294,
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 11),
                      controller: _controller,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10, top: 12),
                          hintText: 'Artist, song or podcast',
                          filled: true,
                          hoverColor: Colors.white,
                          fillColor: Color.fromARGB(14, 37, 37, 37),
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 49, 48, 48),
                              fontSize: 11),
                          focusColor: Color.fromARGB(255, 212, 206, 206),
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _controller.clear();
                                });
                              },
                              icon: Icon(Icons.clear))),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 24, right: 6),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(14, 189, 190, 194),
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "The Kid LAROI",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 6, right: 6),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(14, 189, 190, 194),
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Drake",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 6, right: 6),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(14, 189, 190, 194),
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Justin Bieber",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 6, right: 6),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(14, 189, 190, 194),
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Bob Marley",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 6, right: 6),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(14, 189, 190, 194),
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Lost",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 24, right: 6),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(14, 189, 190, 194),
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Hip Hop",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 98,
                        height: 40,
                        margin: EdgeInsets.only(top: 13, left: 6, right: 6),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(14, 189, 190, 194),
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Pop",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => const TopHit(),
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 98,
                          height: 40,
                          margin: EdgeInsets.only(top: 13, left: 6, right: 6),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(14, 189, 190, 194),
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Top Hits",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 27, left: 24, right: 6),
              child: Text(
                "Podcast's",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 155,
                        height: 195,
                        margin: EdgeInsets.only(left: 24, top: 13),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(14, 189, 190, 194),
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/Rectangle_9.png"),
                            Container(
                              margin: EdgeInsets.only(right: 55, top: 5),
                              child: Text(
                                "Impaulsive",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 80, top: 8),
                              child: Text(
                                "334 ep.",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 173, 172, 172),
                                    fontSize: 11),
                                textAlign: TextAlign.start,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 155,
                        height: 195,
                        margin: EdgeInsets.only(left: 5, top: 13),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(14, 189, 190, 194),
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/Rectangle_10.png"),
                            Container(
                              margin: EdgeInsets.only(right: 28, top: 8),
                              child: Text(
                                "TED Talks Daily",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 85, top: 5),
                              child: Text(
                                "155 ep.",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 173, 172, 172),
                                    fontSize: 11),
                                textAlign: TextAlign.start,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 155,
                        height: 195,
                        margin: EdgeInsets.only(left: 15, top: 13),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(14, 189, 190, 194),
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/moms.png",
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 18, top: 8),
                              child: Text(
                                "Mom’s Basement",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 85, top: 8),
                              child: Text(
                                "75 ep.",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 173, 172, 172),
                                    fontSize: 11),
                                textAlign: TextAlign.start,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: 84,
              //height: 21,
              //alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 31, left: 24),
              child: Text(
                "Browse all",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: GridView.builder(
                padding: EdgeInsets.all(0),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        EdgeInsets.only(left: 15, right: 8, bottom: 2, top: 10),
                    padding: EdgeInsets.only(right: 5, left: 15, top: 15),
                    child: Text(text[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: gradients[index]),
                        borderRadius: BorderRadius.circular(10)),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.8,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
