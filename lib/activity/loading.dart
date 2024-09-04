import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_weather/activity/home.dart';
import 'package:my_weather/activity/location.dart';
import 'package:my_weather/activity/Worker/worker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Weather App',
      home: Loading(),
    );
  }
}

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late String temp;
  late String humidity;
  late String airSpeed;
  late String description;
  late String main;

  void startApp() async {
    Worker instance = Worker('Indore');
    await instance.getData();

    temp = instance.temp;
    humidity = instance.humidity;
    airSpeed = instance.airSpeed;
    description = instance.description;
    main = instance.main;

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'temp_value': temp,
        'main_value': main,
        'airspeed_value': airSpeed,
        'humidity_value': humidity,
        'desc_value': description
      });
    });
  }

  @override
  void initState() {
    super.initState();
    startApp(); // Uncomment this line to start loading data immediately
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Image.asset('images/weather.webp', height: 250, width: 400,),
            SizedBox(height: 20,),
            Text("My Weather App", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold , color: Color(0xFFE98E73)),),
            SizedBox(height: 10,),
            Text("Made By AaryanJii.Co"),
            SizedBox(height: 50,),
            SpinKitWave(
              color: Colors.black,
              size: 50.0,
            )
          ],
        ),
      ),
      backgroundColor: Color(0xffB9AECF),
    );
  }
}