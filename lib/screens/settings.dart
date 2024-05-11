import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sky_cast/controllers/theme_provider.dart';
import 'package:sky_cast/utilities/helper_widgets.dart';
import 'package:sky_cast/widgets/settings_item.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerticalSpace(5),
            settingSectionTitle('General', context),
            const SettingsItem(
              title: 'Unit system',
              subtitle: 'Metric',
              icon: Icons.linear_scale_sharp,
            ),
            addDivider(context),
            addVerticalSpace(20),
            settingSectionTitle('Interface', context),
            const SettingsItem(
              title: 'Theme',
              subtitle: 'System default',
            ),
            GestureDetector(
              onTap: () {
                ref.read(themeProvider.notifier).switchThemes();
              },
              child: const SettingsItem(
                title: 'Dark theme',
                subtitle: 'Default',
              ),
            ),
            addDivider(context),
            addVerticalSpace(20),
            settingSectionTitle('API key', context),
            const SettingsItem(
              icon: Icons.keyboard_alt_outlined,
              title: 'API key',
              subtitle: 'Currently using default API key (not recommended)',
            ),
            const SettingsItem(
              icon: Icons.restore,
              title: 'Reset API key',
            ),
            const SettingsItem(
              icon: Icons.open_in_new,
              title: 'Learn more',
            ),
            addDivider(context),
            addVerticalSpace(20),
            settingSectionTitle('About', context),
            const SettingsItem(
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
