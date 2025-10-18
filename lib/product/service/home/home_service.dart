import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sagmal_mobil/product/models/weather_model.dart';

Future<WeatherModel>? havaDurumu;
final dio = Dio(
  BaseOptions(
    baseUrl: 'https://api.openweathermap.org/data/2.5/',
    queryParameters: {
      'appid': 'b9e056dbe685d5c20fa55f5b6eb93c84',
      'units': 'metric',
      'lang': 'tr',
    },
  ),
);
Future<WeatherModel> getWeather(String sehir) async {
  final response = await dio.get('weather', queryParameters: {'q': sehir});
  var model = weatherModelFromJson(response.toString());
  debugPrint(model.main?.temp.toString());
  return model;
}
