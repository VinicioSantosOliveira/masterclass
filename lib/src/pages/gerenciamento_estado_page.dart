import 'package:flutter/material.dart';

class GerenciamentoEstadoPage extends StatelessWidget {
  GerenciamentoEstadoPage({super.key});

  final counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: MyAnimatedBuilder(
          listenable: counter,
          builder: (context) {
            return Text('${counter.value}');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Counter extends ValueNotifier<int> {
  Counter() : super(0);

  increment() => value++;
}

class MyAnimatedBuilder extends StatefulWidget {
  final Listenable listenable;
  final Widget Function(BuildContext context) builder;

  const MyAnimatedBuilder({super.key, required this.listenable, required this.builder});

  @override
  State<MyAnimatedBuilder> createState() => _MyAnimatedBuilderState();
}

class _MyAnimatedBuilderState extends State<MyAnimatedBuilder> {
  @override
  void initState() {
    super.initState();
    widget.listenable.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    widget.listenable.removeListener(listener);
  }

  void listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }
}
