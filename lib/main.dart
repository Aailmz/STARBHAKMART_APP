import 'package:flutter/material.dart';
import 'dart:async';

import 'package:mobile/splash.dart';

void main() {
  runApp(MaterialApp(home: MyApp()),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10), () {
        Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MainApp(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'images/STARBHAK.png', // Replace with your image asset path
          width: 300, // Adjust the width as needed
          height: 300, // Adjust the height as needed
        ),
      ),
    );
  }
}