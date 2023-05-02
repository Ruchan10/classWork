import 'package:flutter/material.dart';

import '../model/ar_model.dart';

class arView extends StatefulWidget {
  const arView({super.key});

  @override
  State<arView> createState() => _arViewState();
}

class _arViewState extends State<arView> {
  var gap = const SizedBox(height: 10);

  double p = 1;

  double t = 1;

  double r = 1;

  double si = 1;

  arModel armodel = arModel();

  void SI() {
    setState(() {
      si = armodel.calcSI(p, t, r);
      print("SI:::-- $si");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calc SI"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              gap,
              TextField(
                onChanged: (value) {
                  p = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter Principle:- ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 1.0),
                  ),
                ),
              ),
              gap,
              TextField(
                onChanged: (value) {
                  p = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter Time:- ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.0),
                  ),
                ),
              ),
              gap,
              TextField(
                onChanged: (value) {
                  p = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter Rate ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  SI();
                },
                child: const Text("Calculate"),
              ),
              Text("SI:- $si"),
            ],
          ),
        ),
      ),
    );
  }
}
