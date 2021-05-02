import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () async => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            child: Container(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage('assets/images/Rectangle 1.png'),
          ),
        )),
        Positioned(
            child: Container(
          alignment: Alignment.center,
          child: const Image(
            alignment: Alignment.center,
            image: AssetImage('assets/images/Group 13.png'),
          ),
        )),
        Positioned(
            child: Container(
          alignment: Alignment.center,
          child: const Image(
            alignment: Alignment.center,
            image: AssetImage('assets/images/Group 14.png'),
          ),
        ))
      ],
    ));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Home page",
        textScaleFactor: 2,
      )),
    );
  }
}
