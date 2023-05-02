import 'package:flutter/material.dart';

class randomNumGenerator extends StatefulWidget {
  const randomNumGenerator({super.key});

  @override
  State<randomNumGenerator> createState() => _randomNumGeneratorState();
}

class _randomNumGeneratorState extends State<randomNumGenerator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Number Generator"),
      ),
    );
  }
}
