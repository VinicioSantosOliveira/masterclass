import 'package:flutter/material.dart';
import 'package:masterclass/aula_miscelania.dart';
import 'package:masterclass/cube_page.dart';
import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/miscelania': (context) => const Miscelania(),
        '/cube': (context) => const CubePage(),
      },
    );
  }
}
