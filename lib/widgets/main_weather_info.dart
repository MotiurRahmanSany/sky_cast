import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainWeatherInfo extends ConsumerWidget {
  const MainWeatherInfo({super.key});

  final cityName = 'OHIO';
  final currentMainTemp = 26;
  final currentMaxTemp = 26;
  final currentMinTemp = 13;
  final currentSkyDes = 'Clear Sky';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cityName,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 45,
              ),
        ),
        Text(
          '$currentMainTemp',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.white,
                fontSize: 70,
              ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.keyboard_arrow_up_outlined),
            Text(
              '$currentMaxTemp',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.white,
                    fontSize: 23,
                  ),
            ),
            const SizedBox(width: 50),
            const Icon(Icons.keyboard_arrow_down_outlined),
            Text(
              '$currentMinTemp',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.white,
                    fontSize: 23,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          currentSkyDes.toUpperCase(),
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Colors.white,
                fontSize: 28,
                letterSpacing: 10,
              ),
        ),
      ],
    );
  }
}
