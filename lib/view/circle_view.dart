import 'package:flutter/material.dart';

import '../model/ar_model.dart';

class circleView extends StatefulWidget {
  const circleView({super.key});

  @override
  State<circleView> createState() => _circleViewState();
}

class _circleViewState extends State<circleView> {
  double r = 1;
  double area = 1;
  arModel armodel = arModel();

  void calc() {
    setState(() {
      area = armodel.areaCircle(r);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculate Area of Circle"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                r = double.parse(value);
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Calculate"),
            ),
            Text("Area of Circle:- $area")
          ],
        ),
      ),
    );
  }
}
