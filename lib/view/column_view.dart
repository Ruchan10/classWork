import 'package:flutter/material.dart';

class columnView extends StatelessWidget {
  const columnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.star,
              color: Colors.green,
              size: 50,
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 50,
            ),
            Icon(
              Icons.star,
              color: Colors.blue,
              size: 50,
            )
          ],
        ),
      ),
    );
  }
}
