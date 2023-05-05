import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../gen/colors.gen.dart';

final darkTheme = ThemeData.dark().copyWith(
    // customize the dark theme here
    floatingActionButtonTheme: const FloatingActionButtonThemeData(foregroundColor: Colors.white),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
        bodyMedium: const TextStyle(color: Colors.white),
        bodyLarge: const TextStyle(color: Colors.white, fontSize: 16),
        headlineLarge: const TextStyle(color: Colors.white, fontSize: 30),
        titleSmall:
            const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white54),
        titleMedium: const TextStyle(color: Colors.white, fontSize: 16),
        titleLarge:
            const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
    primaryColor: ColorName.primary[300],
    scaffoldBackgroundColor: ColorName.darkBackground,
    appBarTheme: const AppBarTheme(
        backgroundColor: ColorName.darkAppbar, foregroundColor: ColorName.primary));

final lightTheme = ThemeData.light().copyWith(
  // customize the light theme here
  floatingActionButtonTheme: const FloatingActionButtonThemeData(foregroundColor: Colors.white),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      bodyMedium: const TextStyle(color: ColorName.textColor),
      bodyLarge: const TextStyle(color: ColorName.textColor, fontSize: 16),
      titleSmall:
          const TextStyle(color: ColorName.formDesc, fontSize: 16, fontWeight: FontWeight.bold),
      headlineLarge: const TextStyle(color: ColorName.textColor, fontSize: 30),
      titleLarge:
          const TextStyle(color: ColorName.textColor, fontSize: 25, fontWeight: FontWeight.bold)),
  primaryColor: ColorName.primary,
  scaffoldBackgroundColor: ColorName.background,
  appBarTheme:
      const AppBarTheme(backgroundColor: ColorName.cardhistory, foregroundColor: ColorName.primary),
);

final themes = {'Light': lightTheme, 'Dark': darkTheme};
