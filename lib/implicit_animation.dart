import 'package:flutter/material.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({super.key});

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation> {
  var isSelect = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Desafio do botao flutuante',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelect = !isSelect;
            });
          },
          child: AnimatedAlign(
            duration: const Duration(seconds: 2),
            alignment: isSelect ? Alignment.bottomRight : Alignment.topCenter,
            child: AnimatedContainer(
              duration: const Duration(seconds: 2),
              height: 50,
              width: isSelect ? 50 : 100,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.all(
                  isSelect ? const Radius.circular(40) : Radius.zero,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
