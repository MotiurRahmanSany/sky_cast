import 'package:sky_cast/models/city_model.dart';
import 'package:sky_cast/models/weather_list_model.dart';

class Weather {
  final WeatherList weahterList;
  final City city;

  Weather({
    required this.weahterList,
    required this.city,
  });

  factory Weather.fromMap(Map<String, dynamic> json) {
    final city = City.fromMap(json['city']);
    final weatherList = WeatherList.fromMap(json['list'][0]);

    return Weather(
      weahterList: weatherList,
      city: city,
    );
  }
}
