import 'package:flutter/material.dart';

class CustomVisibility extends StatefulWidget {
  const CustomVisibility({super.key});

  @override
  State<CustomVisibility> createState() => _CustomVisibilityState();
}

class _CustomVisibilityState extends State<CustomVisibility> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Visibility")),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            Visibility(
              visible: isVisible,
              // maintainState: true, // keep the state even if hidden
              // maintainSize: true,  // keep the space occupied
              // maintainAnimation: true, // animations continue if any
              // maintainInteractivity: false, // keep widget interactive if true

              // replacement: Text("Green Container replaced by Text"),

              child: Container(height: 200, color: Colors.green),
            ),
            Container(height: 200, color: Colors.blue),
            Container(height: 200, color: Colors.red),
            Container(height: 200, color: Colors.orange),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
        child: Text("Change"),
      ),
    );
  }
}
