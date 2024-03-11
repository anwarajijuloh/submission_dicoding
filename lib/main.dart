import 'package:flutter/material.dart';

import '../core.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Palette.primaryGreen,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MainScreen.routeName,
      routes: {
        StarterScreen.routeName : (_) => const StarterScreen(),
        MainScreen.routeName : (_) => const MainScreen(),
        HomeScreen.routeName : (_) => const HomeScreen(),
      },
    );
  }
}
