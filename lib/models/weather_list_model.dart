import 'package:sky_cast/models/main_list_model.dart';
import 'package:sky_cast/models/weather_description.dart';
import 'package:sky_cast/models/wind_model.dart';

class WeatherList {
  final Main main;
  final WeatherDescription weatherDescription;
  final Wind wind;
  final String visibility;
  final String date;

  WeatherList({
    required this.main,
    required this.weatherDescription,
    required this.wind,
    required this.visibility,
    required this.date,
  });

  factory WeatherList.fromMap(Map<String, dynamic> json) {
    final main = Main.fromMap(json['main']);
    final wind = Wind.fromMap(json['wind']);
    final weatherDescription = WeatherDescription.fromMap(json['weather'][0]);
    
    return WeatherList(
      main: main,
      weatherDescription: weatherDescription,
      wind: wind,
      visibility: json['visibility'],
      date: json['dt_txt'],
    );
  }
}
