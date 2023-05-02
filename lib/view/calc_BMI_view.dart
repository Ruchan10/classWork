import 'package:flutter/material.dart';

class calcBMI extends StatefulWidget {
  const calcBMI({super.key});

  @override
  State<calcBMI> createState() => _calcBMIState();
}

class _calcBMIState extends State<calcBMI> {
  int w = 1;
  int h = 1;
  double bmi = 1;
  void calcBMI() {
    setState(() {
      bmi = w / (h * h);
    });
  }

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(height: 30);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calculate BMI"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              gap,
              TextField(
                onChanged: (value) {
                  w = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter Weight in kg:- ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
              gap,
              TextField(
                onChanged: (value) {
                  h = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter Height in m:- ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
              gap,
              ElevatedButton(
                onPressed: () {
                  calcBMI();
                },
                child: const Text("Calculate BMI"),
              ),
              Text("Your BMI is:- $bmi"),
            ],
          ),
        ));
  }
}
