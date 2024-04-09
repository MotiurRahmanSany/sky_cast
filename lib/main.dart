import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sky_cast/screens/home.dart';

final ColorScheme lightColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFFC6E2FF),
  brightness: Brightness.light,
);

final ColorScheme darkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFFC6E2FF),
  brightness: Brightness.dark,
);

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sky Cast weather app',
      home: const HomeScreen(),
      theme: ThemeData(
        colorScheme: lightColorScheme,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
    );
  }
}
