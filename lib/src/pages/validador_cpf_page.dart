import 'package:flutter/material.dart';
import 'package:masterclass/src/controllers/cpf_controller.dart';

class ValidadorCpfPage extends StatefulWidget {
  const ValidadorCpfPage({super.key});

  @override
  State<ValidadorCpfPage> createState() => _ValidadorCpfPageState();
}

class _ValidadorCpfPageState extends State<ValidadorCpfPage> {
  final controller = CpfController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Validador de Cpf'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              onChanged: controller.setCpf,
              decoration: const InputDecoration(labelText: 'Cpf'),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                controller.validate();
              },
              child: const Text('Verificar'),
            ),
            Expanded(
              child: Center(
                child: Text(
                  controller.result,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
