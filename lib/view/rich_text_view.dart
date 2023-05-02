import 'package:flutter/material.dart';

class richTextView extends StatelessWidget {
  const richTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Just Text"),
      ),
      body: RichText(
        text: const TextSpan(
          text: 'My',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Name is',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: 'Ruchan Kayastha',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Container(
//         color: Colors.blue,
//         width:double.infinity,
//         height:double.infinity /2,
// style: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//           color: Colors.red,
//         ),