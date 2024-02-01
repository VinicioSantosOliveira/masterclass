import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardTextWidget extends StatefulWidget {
  const CardTextWidget({super.key});

  @override
  State<CardTextWidget> createState() => _CardTextWidgetState();
}

class _CardTextWidgetState extends State<CardTextWidget> {
  bool canEnter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                canEnter ? 'Pode entrar' : 'NÃO Pode entrar',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('My City, CA 99984'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  canEnter = !canEnter;
                });
              },
              child: const Text('pode entrar'),
            )
          ],
        ),
      ),
    );
  }
}
