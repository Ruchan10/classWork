import 'package:flutter/material.dart';

class revString extends StatefulWidget {
  const revString({super.key});

  @override
  State<revString> createState() => _revStringState();
}

class _revStringState extends State<revString> {
  var gap = const SizedBox(height: 30);
  String str = "";
  String str0 = "";
  String str1 = "";
  void reverseIt() {
    setState(() {
      var str0 = str.split('');
      str1 = str0.reversed.join();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reverse a String"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gap,
            TextField(
              onChanged: (value) {
                str = value;
              },
              decoration: const InputDecoration(
                labelText: "Enter a String:-",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
            gap,
            ElevatedButton(
              onPressed: () {
                reverseIt();
              },
              child: const Text("Reverse It"),
            ),
            gap,
            Text("Reversed of $str is $str1")
          ],
        ),
      ),
    );
  }
}
