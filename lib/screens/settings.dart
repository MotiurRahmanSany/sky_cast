import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sky_cast/utilities/helper_widgets.dart';
import 'package:sky_cast/widgets/settings_item.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            addVerticalSpace(5),
            settingSectionTitle('General', context),
            SettingsItem(
              title: 'Unit system',
              subtitle: 'Metric',
              icon: Icons.linear_scale_sharp,
            ),
            addDivider(context),
            addVerticalSpace(20),
            settingSectionTitle('Interface', context),
            SettingsItem(
              title: 'Theme',
              subtitle: 'System default',
            ),
            SettingsItem(
              title: 'Dark theme',
              subtitle: 'Default',
            ),
            addDivider(context),
            addVerticalSpace(20),
            settingSectionTitle('API key', context),
            SettingsItem(
              icon: Icons.keyboard_alt_outlined,
              title: 'API key',
              subtitle: 'Currently using default API key (not recommended)',
            ),
            SettingsItem(
              icon: Icons.restore,
              title: 'Reset API key',
            ),
            SettingsItem(
              icon: Icons.open_in_new,
              title: 'Learn more',
            ),
            addDivider(context),
            addVerticalSpace(20),
            settingSectionTitle('About', context),
            SettingsItem(
              icon: Icons.info_outline,
              title: 'About climate',
            ),
            addDivider(context),
            addVerticalSpace(60),
          ],
        ),
      ),
    );
  }
}
