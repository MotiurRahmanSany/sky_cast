class Coord {
  final String lat;
  final String lon;

  Coord({
    required this.lat,
    required this.lon,
  });

  factory Coord.fromMap(Map<String, dynamic> json) {
    return Coord(
      lat: json['lat'],
      lon: json['lon'],
    );
  }
}
