class Main {
  final String mainTemp;
  final String minTemp;
  final String maxTemp;
  final String pressure;
  final String humidity;
  final String feelsLike;

  Main({
    required this.mainTemp,
    required this.minTemp,
    required this.maxTemp,
    required this.pressure,
    required this.humidity,
    required this.feelsLike,
  });

  factory Main.fromMap(Map<String, dynamic> json) {
    return Main(
      mainTemp: json['temp'],
      minTemp: json['temp_min'],
      maxTemp: json['temp_max'],
      pressure: json['pressure'],
      humidity: json['humidity'],
      feelsLike: json['feels_like'],
    );
  }
}
