import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.orange,
    brightness: Brightness.dark,
  ),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
  useMaterial3: true,
);

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.orange,
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
  useMaterial3: true,
);
