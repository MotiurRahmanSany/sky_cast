import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class HourlyForecastItem extends ConsumerWidget {
  const HourlyForecastItem({
    super.key,
    required this.time,
    required this.icon,
    required this.humidity,
    required this.temp,
  });

  final DateTime time;
  final IconData icon;
  final int temp;
  final int humidity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            DateFormat.j().format(time),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                ),
          ),
          const SizedBox(height: 15),
          Icon(
            icon,
            size: 32,
          ),
          const SizedBox(height: 18),
          Text(
            temp.toString(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.water_drop),
              const SizedBox(width: 3),
              Text(
                '$humidity%',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
