import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sky_cast/screens/home.dart';

final ColorScheme lightColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 196, 196, 192),
  brightness: Brightness.light,
);

final ColorScheme darkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 196, 196, 192),
  brightness: Brightness.dark,
);

final ColorScheme activeThemeMode = lightColorScheme;
void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sky Cast weather app',
      home: const HomeScreen(),
      theme: ThemeData(
        colorScheme: activeThemeMode,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
    );
  }
}
