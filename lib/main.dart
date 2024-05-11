import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sky_cast/controllers/theme_provider.dart';
import 'package:sky_cast/screens/home.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(themeProvider.notifier);

    return MaterialApp(
      title: 'Sky Cast weather app',
      home: const HomeScreen(),
      theme: ThemeData(
        colorScheme: appTheme.currentTheme,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
    );
  }
}
