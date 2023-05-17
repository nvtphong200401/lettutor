import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeProvider = StateProvider<ThemeMode>((ref) {
  return ThemeMode.light;
});

final languageProvider = StateProvider<String>((ref) {
  return FlutterLocalization.instance.currentLocale?.languageCode ?? 'en';
});
