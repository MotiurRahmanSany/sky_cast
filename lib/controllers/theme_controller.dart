import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sky_cast/constants/app_themes.dart';

final themeProvider =
    StateNotifierProvider<ThemeNotifier, ColorScheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<ColorScheme> {
  ThemeNotifier() : super(lightColorScheme);

  ColorScheme get currentTheme => state;

  void switchThemes() {
    state = state == lightColorScheme ? darkColorScheme : lightColorScheme;
  }
}
