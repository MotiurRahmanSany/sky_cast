import 'package:flutter/material.dart';

Widget addDivider(BuildContext context) {
  return Divider(
    color: Theme.of(context).colorScheme.onBackground.withOpacity(0.1),
    thickness: 2,
    height: 2,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget settingSectionTitle(String title, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 55),
    child: Text(
      title,
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: const Color.fromARGB(255, 1, 137, 200),
          ),
    ),
  );
}
