import 'package:flutter/foundation.dart';
import 'package:my_weather/weather.dart';
import 'package:my_weather/weather_data.dart';

class WeatherScreenManager {
  final weatherNotifier = ValueNotifier<Weather>(Weather.sunny);
  final degreeNotifier = ValueNotifier<String>('-');
  final weatherData = WeatherData();

  void updateWeather() async {
    print('Updating...');
    final degree = await weatherData.getDegree();
    degreeNotifier.value = '$degree°';
    weatherNotifier.value = await weatherData.getWeather();
  }
}
