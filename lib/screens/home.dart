import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sky_cast/screens/settings.dart';
import 'package:sky_cast/utilities/helper_widgets.dart';
import 'package:sky_cast/widgets/hourly_forecast.dart';
import 'package:sky_cast/widgets/main_weather_info.dart';
import 'package:sky_cast/widgets/weather_details.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MainWeatherInfo(),
              addVerticalSpace(30),
              addDivider(context),
              addVerticalSpace(20),
              const HourlyForecast(),
              addVerticalSpace(30),
              addDivider(context),
              addVerticalSpace(30),
              const SizedBox(
                height: 250,
                child: WeatherDetails(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
