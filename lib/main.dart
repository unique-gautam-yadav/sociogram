import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/home/screens/home_screen.dart';
import 'utils/theme/theme_state.dart';
import 'utils/theme/themes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, _) {
        return MaterialApp(
          theme: lightTheme,
          themeMode: value.themeMode ? ThemeMode.dark : ThemeMode.light,
          darkTheme: darkTheme,
          home: const HomeScreen(),
        );
      },
    );
  }
}
