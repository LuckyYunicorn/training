// import 'package:flutter/material.dart';
//
// class CustomInkAndGesture extends StatelessWidget {
//   const CustomInkAndGesture({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             spacing: 10,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   ScaffoldMessenger.of(
//                     context,
//                   ).showSnackBar(SnackBar(content: Text("On Tap")));
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   height: 100,
//                   color: Colors.orange,
//                   child: Center(child: Text("1 OnTap")),
//                 ),
//               ),
//               GestureDetector(
//                 onDoubleTap: () {
//                   ScaffoldMessenger.of(
//                     context,
//                   ).showSnackBar(SnackBar(content: Text("On double Tap")));
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   height: 100,
//                   color: Colors.white,
//                   child: Center(child: Text("2 OnDoubleTap")),
//                 ),
//               ),
//               GestureDetector(
//                 onLongPress: () {
//                   ScaffoldMessenger.of(
//                     context,
//                   ).showSnackBar(SnackBar(content: Text("On Long Press")));
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   height: 100,
//                   color: Colors.green,
//                   child: Center(child: Text("3 On Long Press")),
//                 ),
//               ),
//
//               GestureDetector(
//
//                 onTapCancel: () {
//                   print("On double tap cancel");
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text("On double tap cancel")),
//                   );
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   height: 100,
//                   color: Colors.green,
//                   child: Center(child: Text("4 On tap cancel")),
//                 ),
//               ),
//               GestureDetector(
//                 onTapDown: (TapDownDetails details) {
//
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text("Offset: ${details.globalPosition}")),
//                   );
//                 },
//                 child: Container(height: 100, color: Colors.blue,child: Center(child: Text("On tap Down")),),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomInkAndGesture extends StatelessWidget {
  const CustomInkAndGesture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            InkWell(
              radius: 5,
              splashColor: Colors.red,
              autofocus: true,
              focusColor: Colors.yellow,
              highlightColor: Colors.red,
              hoverColor: Colors.blue,

              borderRadius: BorderRadius.all(Radius.circular(50)),
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("On Tap")));
              },
              child: Container(
                // decoration: BoxDecoration(color: Colors.yellow),
                width: double.infinity,
                height: 100,
                child: Center(child: Text("1 OnTap")),
              ),
            ),
            InkWell(
              radius: 5,
              splashColor: Colors.red,
              autofocus: true,
              focusColor: Colors.yellow,
              highlightColor: Colors.red,
              hoverColor: Colors.blue,

              borderRadius: BorderRadius.all(Radius.circular(50)),
              onDoubleTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("On Double Tap")));
              },
              child: Container(
                // decoration: BoxDecoration(color: Colors.yellow),
                width: double.infinity,
                height: 100,
                child: Center(child: Text("2 On Double Tap")),
              ),
            ),
            InkWell(
              radius: 5,
              splashColor: Colors.red,
              autofocus: true,
              focusColor: Colors.yellow,
              highlightColor: Colors.red,
              hoverColor: Colors.blue,

              borderRadius: BorderRadius.all(Radius.circular(50)),
              onLongPress: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("onLongPress")));
              },
              child: Container(
                // decoration: BoxDecoration(color: Colors.yellow),
                width: double.infinity,
                height: 100,
                child: Center(child: Text("3 onLongPress")),
              ),
            ),
            InkWell(
              radius: 5,
              splashColor: Colors.red,
              autofocus: true,
              focusColor: Colors.yellow,
              highlightColor: Colors.red,
              hoverColor: Colors.blue,

              borderRadius: BorderRadius.all(Radius.circular(50)),
              onTapDown: (details) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("${details.globalPosition}")));

              },
              child: Container(
                // decoration: BoxDecoration(color: Colors.yellow),
                width: double.infinity,
                height: 100,
                child: Center(child: Text("On tap down")),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
