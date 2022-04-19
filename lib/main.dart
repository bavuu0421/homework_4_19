import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_weather/weather_sceen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherScreen(),
    );
  }
}
