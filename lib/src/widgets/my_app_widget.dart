import 'package:flutter/material.dart';
import 'package:masterclass/src/pages/aula_miscelania_page.dart';
import 'package:masterclass/src/pages/bmi_page.dart';
import 'package:masterclass/src/pages/cube_page.dart';
import 'package:masterclass/src/pages/gerenciamento_estado_page.dart';
import 'package:masterclass/src/pages/validador_cpf_page.dart';
import '../pages/home_page.dart';

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
        '/bmi': (context) => const BmiPage(),
        '/cpf': (context) => const ValidadorCpfPage(),
        '/gerenciamento': (context) => GerenciamentoEstadoPage(),
      },
    );
  }
}
