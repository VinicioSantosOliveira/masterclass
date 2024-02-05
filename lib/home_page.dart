import 'package:flutter/material.dart';
import 'package:masterclass/card_text_widget.dart';
import 'package:masterclass/aula_miscelania.dart';
import 'package:masterclass/implicit_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 251, 0, 0),
        title: const Text('Home Page'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Masterclass'),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ImplicitAnimation(),
                  ),
                );
              },
              icon: const Icon(Icons.animation),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/miscelania');
              },
              icon: const Icon(Icons.add),
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
