import 'package:flutter/material.dart';
import 'package:masterclass/src/controllers/bmi_controller.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  final controller = BmiController();
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
        title: const Text('BMI Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              onChanged: controller.setWeight,
              decoration: const InputDecoration(labelText: 'Peso'),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              onChanged: controller.setHeight,
              decoration: const InputDecoration(labelText: 'Altura'),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: controller.calcBMI,
              child: const Text('Calcular IMC'),
            ),
            Expanded(
              child: Center(
                child: Text(controller.result),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
