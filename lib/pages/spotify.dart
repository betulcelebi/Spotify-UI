import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_ui/main.dart';
import 'package:spotify_ui/pages/home.dart';
import 'package:spotify_ui/pages/log_in.dart';

class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/getstarted.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 85,
                height: 29,
                margin: EdgeInsets.only(left: 153, right: 152, top: 600),
                child: Text(
                  "Spotify ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 400,
                height: 84,
                margin: EdgeInsets.only(top: 19, left: 25, right: 29),
                child: Text(
                  "A digital music, podcast, and video service that gives you access to millions of songs and other content from creators all over the world.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15, fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const LogIn(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: 25, top: 720),
              alignment: Alignment.center,
              width: 345,
              height: 58,
              decoration: BoxDecoration(
                  color: Color(0xff1ED760),
                  borderRadius: BorderRadius.circular(31)),
              child: Text(
                "Get Started ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
