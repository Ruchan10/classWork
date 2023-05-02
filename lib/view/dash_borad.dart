import 'package:flutter/material.dart';

class dashBoard extends StatefulWidget {
  const dashBoard({super.key});

  @override
  State<dashBoard> createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/arRoute'); //popAndPushNamed--No Back
              },
              child: const Text("SI"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/arRoute');
              },
              child: const Text("Arithmetic"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/circleRoute');
              },
              child: const Text("Calc Area"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/nameRoute');
              },
              child: const Center(child: Text("Name")),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/textRoute');
              },
              child: const Center(
                child: Text("Display Text"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/columnRoute');
              },
              child: const Center(
                child: Text("Column"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bmiRoute');
              },
              child: const Center(
                child: Text("Calculate BMI"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/revRoute');
              },
              child: const Center(
                child: Text("Reverse String"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secHighRoute');
              },
              child: const Center(
                child: Text("Find Second Highest"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
