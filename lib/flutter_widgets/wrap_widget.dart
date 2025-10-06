import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWrap extends StatefulWidget {
  const CustomWrap({super.key});

  @override
  State<CustomWrap> createState() => _CustomWrapState();
}

class _CustomWrapState extends State<CustomWrap> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      // verticalDirection: VerticalDirection.up,
      spacing: 20, // horizontal gap
      runSpacing: 10, // vertical gap
      // textDirection: TextDirection.rtl,
      // alignment: WrapAlignment.spaceEvenly,
      // runAlignment: WrapAlignment.spaceAround,

      children: [
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.red[100],
          child: const Text("Flutter "),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.orange[100],
          child: const Text("Dart"),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.yellow[100],
          child: const Text("Mobile"),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.green[100],
          child: const Text("Data 4"),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.blue[100],
          child: const Text("Web"),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.indigo[100],
          child: const Text("Desktop"),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.purple[100],
          child: const Text("Firebase"),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.pink[100],
          child: const Text("Backend"),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[100],
          child: const Text("Ui/Ux"),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.cyan[100],
          child: const Text("Apis"),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.cyan[100],
          child: const Text("Open Source"),
        ),

        // Text("Data 20"),
        // Text("Data 21"),
        // Text("Data 22"),
      ],
    );
  }
}
