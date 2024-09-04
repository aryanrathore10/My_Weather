import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_weather/activity/location.dart';

class Worker {
  String location;

  Worker(this.location);

  late String temp;
  late String humidity;
  late String airSpeed;
  late String description;
  late String main;

  Future<void> getData() async {
    try {
      final url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=22.7196&lon=75.8573&appid=7965deb13f6088c00b8e2f526fcf573a");
      http.Response response = await http.get(url);

        Map<String, dynamic> data = jsonDecode(response.body);

        List<dynamic> weather = data['weather'];
        Map<String, dynamic> weatherData = weather[0];

      Map<String, dynamic> tempData = data['main'];
      double getTemp = tempData['temp']; // temperature in Kelvin
      double temperatureCelsius = getTemp - 273.15; // convert Kelvin to Celsius
      double temperatureFahrenheit = (temperatureCelsius * 9/5) + 32; // convert to double
      int getHumidity = tempData['humidity']; // declare as int

        Map<String, dynamic> speed = data['wind'];
        double getAirSpeed = speed['speed']/0.29; // convert to double

        temp = ('Temperature : $temperatureCelsius°C');
        humidity = ('Humidity : $getHumidity').toString();
        airSpeed = ('Air Speed : $getAirSpeed').toString();
        main =  weatherData['main'];
        description = weatherData['description'];
      }
     catch (e) {
      temp = "Data Can't Find";
      humidity = "Error Occurs";
      airSpeed = "Data Can't Find";
      main ="Data Can't Find";
      description = "Data Can't Find";
    }
  }
}