import 'package:flutter/material.dart';
import 'package:masterclass/src/pages/implicit_animation_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 251, 0, 0),
        title: const Text('Masterclass'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ImplicitAnimation(),
                  ),
                );
              },
              child: const Text('ImplicitAnimationPage'),
            ),
            TextButton(
              onPressed: () async {
                debugPrint('navegou para outra tela');
                final value = await Navigator.of(context).pushNamed('/miscelania');
                debugPrint('chegando');
                debugPrint('$value');
              },
              child: const Text('Miscelania'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bmi');
              },
              child: const Text('BMI'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/cpf');
              },
              child: const Text('Cpf'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/gerenciamento');
              },
              child: const Text('Gerenciamento de estado'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amberAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
