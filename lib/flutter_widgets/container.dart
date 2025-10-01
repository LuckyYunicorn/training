import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(200, 200)),
          border: Border.all(
            color: Colors.brown,
            width: 2,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
          gradient: LinearGradient(colors: [Colors.green, Colors.yellow]),
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              spreadRadius: 2,
              blurRadius: 20,
              offset: Offset(15, 15),
            ),
          ],
        ),
        // foregroundDecoration: BoxDecoration(
        //   borderRadius: BorderRadius.all(Radius.elliptical(200, 200)),
        //   color: Colors.black.withOpacity(0.3), // Semi-transparent overlay
        // ),
        child: Center(
          child: Text(
            "Hello",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
