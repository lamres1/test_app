import 'package:test_app/weather/page3.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(
      String? latitude, String? longitude) async {
    if (longitude == "hi") {
      var endpoint = Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q=$latitude&appid=59b8c7ee030fa168174a6a0b2103b1db&units=metric");
      var response = await http.get(endpoint);
      var body = jsonDecode(response.body);
      print(Weather.fromJson(body));
      return Weather.fromJson(body);
    } else {
      var endpoint = Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=59b8c7ee030fa168174a6a0b2103b1db&units=metric");
      var response = await http.get(endpoint);
      var body = jsonDecode(response.body);
      print(Weather.fromJson(body));
      return Weather.fromJson(body);
    }
  }
}
