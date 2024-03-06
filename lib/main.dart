import 'package:flutter/material.dart';
import 'package:toonfix/widgets/stateless_app.dart';

void main() {
  bool isStateless = false;
  runApp(isStateless ? const StatelessApp() : const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isShowTitle = false;

  void onPressed() {
    setState(() {
      isShowTitle = !isShowTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isShowTitle ? const MyLargeTitle() : const Text('nothing'),
              IconButton(
                onPressed: onPressed,
                icon: const Icon(Icons.remove_red_eye_rounded),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
