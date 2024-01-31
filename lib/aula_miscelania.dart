import 'package:flutter/material.dart';

class Miscelania extends StatelessWidget {
  const Miscelania({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Align(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.yellow,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
