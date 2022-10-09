import 'package:flutter/material.dart';

import 'package:spotify_ui/main.dart';

class LogIn extends StatefulWidget { 
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.only(bottom: 250),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/Ellipse.png")),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 122),
            child: Image.asset("assets/Vector.png"),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 200),
            child: Text(
              "MIllions of songs, free on spotify",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
          ),
          Container(
            width: 342,
            height: 445,
            margin: EdgeInsets.only(right: 24, left: 24, top: 266),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 33),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Login Account",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 260,
                  height: 32,
                  margin: EdgeInsets.only(top: 35),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff1ED760)),
                      borderRadius: BorderRadius.circular(26)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          "Email or username",
                          style:
                              TextStyle(color: Color(0xff1ED760), fontSize: 14),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Image.asset("assets/mail.png"))
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 260,
                  height: 32,
                  margin: EdgeInsets.only(top: 18),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffDADADA)),
                      borderRadius: BorderRadius.circular(26)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          "Password",
                          style:
                              TextStyle(color: Color(0xffDADADA), fontSize: 14),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Image.asset("assets/visibility.png"))
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 260,
                  height: 32,
                  margin: EdgeInsets.only(top: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Text(
                          "Remember me",
                          style:
                              TextStyle(color: Color(0xffDADADA), fontSize: 14),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Image.asset("assets/toggle-right.png"))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const MyHomePage(
                          title: "",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 31),
                    alignment: Alignment.center,
                    width: 260,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff1ED760),
                        borderRadius: BorderRadius.circular(31)),
                    child: Text(
                      "LOG IN ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 34, right: 40, top: 26),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/Line 2.png"),
                      Text(
                        "or",
                        style: TextStyle(
                          color: Color(0xffDADADA),
                          fontSize: 13,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Image.asset("assets/Line 3.png")
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 118, top: 14),
                      child: Image.asset("assets/google.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 131, top: 14),
                      child: Image.asset("assets/facebook.png"),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 14),
                  child: Text(
                    "Forget password?",
                    style: TextStyle(color: Color(0xffDADADA), fontSize: 14),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 58, bottom: 45),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Don’t have an account?",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 85, bottom: 45),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Sign up now",
                  style: TextStyle(
                      color: Color(0xff1ED760),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
