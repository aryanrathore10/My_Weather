import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_weather/activity/loading.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Loading()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration (
            image:DecorationImage(
                image: AssetImage('images/ my weather app.png')
            ),

          ),
    ),);
  }
}
