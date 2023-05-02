import 'package:flutter/material.dart';

class secHigh extends StatefulWidget {
  const secHigh({super.key});

  @override
  State<secHigh> createState() => _secHighState();
}

class _secHighState extends State<secHigh> {
  var tec = TextEditingController();

  var gap = const SizedBox(height: 30);
  List lst = [];
  int count = -1;
  int sec = 0;
  int val = 0;
  int high = 0;

  void addList() {
    tec.clear();
    lst.add(val);
  }

  void calcSec() {
    setState(
      () {
        sec = lst[0];
        high = lst[0];
        for (int i in lst) {
          if (i > high) {
            high = i;
          }
        }
        for (int i in lst) {
          if (i > sec && i < high) {
            sec = i;
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second highest in the list"),
      ),
      body: Column(
        children: [
          gap,
          TextField(
            controller: tec,
            onChanged: (value) {
              val = int.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Enter a number to add in the list",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          gap,
          ElevatedButton(
            onPressed: () {
              addList();
            },
            child: const Text("Add to List"),
          ),
          ElevatedButton(
            onPressed: () {
              calcSec();
            },
            child: const Text("Find Second Highest"),
          ),
          gap,
          gap,
          Text("List:- $lst"),
          gap,
          Text("Second Highest in the List is $sec and highest is $high"),
        ],
      ),
    );
  }
}
