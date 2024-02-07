import 'package:flutter/material.dart';

class CubePage extends StatelessWidget {
  const CubePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 251, 0, 0),
        title: const Text('Cube Page'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.green,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20)).copyWith(
                        topLeft: const Radius.circular(99),
                        topRight: const Radius.circular(50),
                        bottomLeft: const Radius.circular(20),
                        bottomRight: const Radius.circular(60),
                      ),
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).popUntil((route) => route.settings.name == '/');
                  Navigator.of(context).popUntil(ModalRoute.withName('/'));
                },
                child: const Text('Pop'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
