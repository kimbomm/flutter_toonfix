import 'package:flutter/material.dart';
import 'package:toonfix/tookfix_screens/home_screen.dart';
// import 'package:toonfix/screens/home_screen.dart';
// import 'package:toonfix/widgets/stateless_app.dart';
// import 'package:toonfix/screens/stateful_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 위젯은 ID같은 식별자 역할을 하는 key가 있다.
  // Fluuter가 위젯을 찾는데 사용한다.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
