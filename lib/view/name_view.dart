import 'package:flutter/material.dart';

import '../model/ar_model.dart';

class nameView extends StatefulWidget {
  const nameView({super.key});

  @override
  State<nameView> createState() => _nameViewState();
}

class _nameViewState extends State<nameView> {
  String name = "";
  arModel armodel = arModel();
  void changeName() {
    name = armodel.cName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Click ME!!!")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                changeName();
              },
              child: const Text("Calculate"),
            ),
          ],
        ),
      ),
    );
  }
}
