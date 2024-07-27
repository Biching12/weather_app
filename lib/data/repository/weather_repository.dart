import 'dart:convert';

import 'package:weather_app/data/data_provider/weather_data_provider.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherRepository {
  final WeatherDataProvider weatherDataProvider;
  WeatherRepository(this.weatherDataProvider);

  Future<WeatherModel> getCurrentWeather() async {
    try {
      final weatherData = await weatherDataProvider.getCurrentWeather();
      final data = jsonDecode(weatherData);

      return WeatherModel.fromMap(data);
    } catch (e) {
      throw e.toString();
    }
  }
}
