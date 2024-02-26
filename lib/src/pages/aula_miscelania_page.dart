import 'package:flutter/material.dart';

class Miscelania extends StatelessWidget {
  const Miscelania({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('item $index'),
                );
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop('retornou');
            },
            icon: const Icon(Icons.abc_outlined),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/cube');
            },
            child: const Text('CubePage'),
          ),
        ],
      ),
    );
  }
}
