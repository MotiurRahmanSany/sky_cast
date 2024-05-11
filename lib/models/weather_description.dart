class WeatherDescription {
  final String main;
  final String description;

  WeatherDescription({
    required this.main,
    required this.description,
  });

  factory WeatherDescription.fromMap(Map<String, dynamic> json) {
    return WeatherDescription(
      main: json['main'],
      description: json['description'],
    );
  }
}
