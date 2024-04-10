import 'package:flutter/material.dart';
import 'package:sky_cast/utilities/helper_widgets.dart';

class WeatherDetailsItem extends StatelessWidget {
  const WeatherDetailsItem({
    super.key,
    this.unit,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  final String? unit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(.8),
              ),
        ),
        addVerticalSpace(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            addHorizontalSpace(2),
            Text(
              unit ?? '',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
