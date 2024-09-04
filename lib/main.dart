import 'package:flutter/material.dart';
import 'package:my_weather/activity/home.dart';
import 'package:my_weather/activity/loading.dart';
import 'package:my_weather/activity/location.dart';
import 'package:my_weather/activity/splash.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App',
    home: Loading(),
    routes: {
      '/home': (context) => Home(),
    },

  )

  );
}
