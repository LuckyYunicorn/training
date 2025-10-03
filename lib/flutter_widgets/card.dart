import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: CircleBorder(),

      color: Colors.brown,
      child: Text("data"),

    );
  }
}
