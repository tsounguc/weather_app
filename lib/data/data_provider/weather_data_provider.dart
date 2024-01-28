import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../secrets.dart';

class WeatherDataProvider {
  Future<String> getCurrentWeather(String cityName) async {
    try {
      final result = await http.get(
        Uri.parse('https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$openWeatherAPIKey'),
      );

      return result.body;
    } catch (e) {
      throw e.toString();
    }
  }
}
