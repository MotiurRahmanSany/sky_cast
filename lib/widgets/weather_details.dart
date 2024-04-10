import 'package:flutter/material.dart';
import 'package:sky_cast/widgets/weather_details_item.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 16 / 9,
      ),
      children: const [
        WeatherDetailsItem(
          title: 'Feels like',
          value: '26',
          unit: '°',
        ),
        WeatherDetailsItem(
          title: 'Humidity',
          value: '58',
          unit: '%',
        ),
        WeatherDetailsItem(
          title: 'Wind speed',
          value: '7',
          unit: 'Km/h',
        ),
        WeatherDetailsItem(
          title: 'Clouds',
          value: '2',
          unit: '%',
        ),
        WeatherDetailsItem(
          title: 'UV index',
          value: '9.67',
        ),
        WeatherDetailsItem(
          title: 'Rain Chance',
          value: '0',
          unit: '%',
        ),
        WeatherDetailsItem(
          title: 'Sunrise',
          value: '05:32',
        ),
        WeatherDetailsItem(
          title: 'Sunset',
          value: '20:33',
        ),
        WeatherDetailsItem(
          title: 'Pressure',
          value: '1018',
          unit: 'mbar',
        ),
      ],
    );
  }
}
