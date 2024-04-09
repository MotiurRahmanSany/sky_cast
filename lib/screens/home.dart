import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sky_cast/widgets/custom_divider.dart';
import 'package:sky_cast/widgets/hourly_forecast.dart';
import 'package:sky_cast/widgets/main_weather_info.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainWeatherInfo(),
            SizedBox(height: 30),
            CustomDivider(),
            SizedBox(height: 20),
            HourlyForecast(),
            SizedBox(height: 30),
            CustomDivider(),

          ],
        ),
      ),
    );
  }
}
