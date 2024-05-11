class Wind {
  final String speed;

  Wind({required this.speed});

  factory Wind.fromMap(Map<String, dynamic> json){
    return Wind(speed: json['speed']);
  }

}