import 'package:sky_cast/models/coordinates_model.dart';

class City {
  final String name;
  final Coord coord;
  final String country;
  final String sunrise;
  final String sunset;

  City({
    required this.name,
    required this.coord,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  factory City.fromMap(Map<String, dynamic> json) {
    final coord = Coord.fromMap(json['coord']);

    return City(
      name: json['name'],
      coord: coord,
      country: json['country'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
    );
  }
}
