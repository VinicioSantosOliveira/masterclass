import 'package:flutter/material.dart';
import 'package:masterclass/aula_miscelania.dart';
import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/miscelania': (context) => const Miscelania(),
      },
    );
  }
}
