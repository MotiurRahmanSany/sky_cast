import 'dart:convert';
import 'package:sky_cast/constants/api_key.dart';
import 'package:http/http.dart' as http;
import 'package:sky_cast/models/weather_model.dart';

Future<List<Weather>> fetchWeatherData(String city) async {
  final String url =
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$weatherAPIKey';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as List<Map<String, dynamic>>;
    return data.map((e) => Weather.fromMap(e)).toList();
  } else {
    throw Exception('Uh, oh Looks like something went wrong!');
  }
}



// class UserApi {
//   Future<List<User>> fetchUsers() async {
//     const url = 'https://randomuser.me/api/?results=150';
//     final response = await http.get(Uri.parse(url));

//     final body = response.body;
//     final json = jsonDecode(body);
//     final results = json['results'] as List<dynamic>;
//     final transformed = results.map((e) {
//       return User.fromMap(e);
//     }).toList();
//     return transformed;
//   }
// }