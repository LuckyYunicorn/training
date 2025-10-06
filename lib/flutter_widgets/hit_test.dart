import 'package:flutter/material.dart';

class HitTestBehaviorDemo extends StatefulWidget {
  const HitTestBehaviorDemo({super.key});

  @override
  State<HitTestBehaviorDemo> createState() => _HitTestBehaviorDemoState();
}

class _HitTestBehaviorDemoState extends State<HitTestBehaviorDemo> {
  String message = "Tap on any box 👇";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HitTestBehavior Demo")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),

          // 🔹 Stack of two overlapping boxes
          Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    message = "🟩 Green Box (Bottom) tapped!";
                  });
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      "Green Box",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              GestureDetector(
                behavior: HitTestBehavior.deferToChild, // change this to opaque or translucent
                onTap: () {
                  setState(() {
                    message = "🔵 Blue Box (Top) tapped!";
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  color: Colors.blue.withOpacity(0.5),
                  child: const Center(
                    child: Text(
                      "Blue Box",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 40),
          // Buttons to switch behavior dynamically
          Wrap(
            spacing: 10,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = "Behavior = deferToChild\nTap blue or green!";
                  });
                },
                child: const Text("deferToChild"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = "Behavior = opaque\nTap blue or green!";
                  });
                },
                child: const Text("opaque"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = "Behavior = translucent\nTap blue or green!";
                  });
                },
                child: const Text("translucent"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
