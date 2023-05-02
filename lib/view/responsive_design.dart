import 'package:flutter/material.dart';

class responsiveDesign extends StatefulWidget {
  const responsiveDesign({super.key});

  @override
  State<responsiveDesign> createState() => _responsiveDesignState();
}

class _responsiveDesignState extends State<responsiveDesign> {
  var gap = const SizedBox(height: 10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              gap,
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.red,
                child: const Text(
                  "Col1",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              gap,
              Row(
                children: [
                  Container(
                    width: 186,
                    height: 200,
                    color: Colors.red,
                    child: const Text(
                      "Col2, Row1",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  gap,
                  Container(
                    width: 186,
                    height: 200,
                    color: Colors.red,
                    child: const Text(
                      "Col2, Row2",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
              gap,
              Row(
                children: [
                  Container(
                    width: 186,
                    height: 200,
                    color: Colors.red,
                    child: const Text(
                      "Col2, Row1",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  gap,
                  Container(
                    width: 186,
                    height: 200,
                    color: Colors.red,
                    child: const Text(
                      "Col2, Row2",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
