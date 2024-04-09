import 'package:flutter/material.dart';
import 'package:sky_cast/widgets/hourly_forecast_item.dart';

class HourlyForecast extends StatelessWidget {
  const HourlyForecast({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => HourlyForecastItem(
          time: DateTime.now(),
          icon: Icons.sunny_snowing,
          humidity: 0,
          temp: 23,
        ),
      ),
    );
  }
}
