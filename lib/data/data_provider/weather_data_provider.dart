import 'package:http/http.dart' as http;
import 'package:weather_app/secrets.dart';

class WeatherDataProvider {
  Future<String> getCurrentWeather() async {
    try {
      final res = await http.get(
        Uri.parse(
            'http://api.openweathermap.org/data/2.5/forecast?id=524901&appid=$openWeatherAPIKey'),
      );

      return res.body;
    } catch (e) {
      throw e.toString();
    }
  }
}
