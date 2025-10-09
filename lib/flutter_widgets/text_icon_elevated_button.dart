import 'package:flutter/material.dart';

class TextIconElevatedButton extends StatelessWidget {
  const TextIconElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            spacing: 50,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.topRight,
                  foregroundColor: Colors.white, // Text color
                  backgroundColor: Colors.blue, // Button background
                  padding: EdgeInsets.all(40),
                  overlayColor: Colors.yellow,

                  shape: BeveledRectangleBorder(),
                  elevation: 2,
                ),
                onLongPress: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Text Button on Long Pressed")),
                  );
                },
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Text Button")));
                },
                child: Text("Text Button"),
              ),
              ElevatedButton(
                clipBehavior: Clip.hardEdge,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  // alignment: Alignment.center
                  elevation: 12,
                  shadowColor: Colors.red,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Elevated Button")));
                },
                child: Text(
                  "Elevated Elevated Button Elevated Button Elevated Button",
                ),
              ),
              IconButton(
                style: IconButton.styleFrom(
                  shadowColor: Colors.green,
                  elevation: 5,
                  // shape: RoundedRectangleBorder(),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Icon Button")));
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
