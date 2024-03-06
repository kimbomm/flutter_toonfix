import 'package:flutter/material.dart';
import 'package:toonfix/screens/home_screen.dart';
// import 'package:toonfix/widgets/stateless_app.dart';
// import 'package:toonfix/screens/stateful_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xFF232b55),
          onPrimary: Color(0xFFFFFFFF),
          secondary: Color(0xFFE7626C),
          onSecondary: Color(0xFFFFFFFF),
          error: Color(0xFF000000),
          onError: Color(0xFFFFFFFF),
          onBackground: Color(0xFFE7626C),
          surface: Color(0xFFFFFFFF),
          onSurface: Color(0xFF000000),
          brightness: Brightness.light,
          background: Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232b55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}
