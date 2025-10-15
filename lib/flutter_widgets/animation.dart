// import 'package:flutter/material.dart';
//
// class CustomAnimation extends StatefulWidget {
//   const CustomAnimation({super.key});
//
//   @override
//   State<CustomAnimation> createState() => _CustomAnimationState();
// }
//
// class _CustomAnimationState extends State<CustomAnimation> {
//   bool isTapped = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Animation Container")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             InkWell(
//               onTap: () {
//                 isTapped = !isTapped;
//                 setState(() {});
//               },
//               child: AnimatedContainer(
//                 curve: Curves.easeInQuart,
//                 duration: Duration(seconds: 3),
//                 height: isTapped ? 300 : 100,
//                 width: isTapped ? 300 : 100,
//                 color: Colors.green,
//               ),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// import 'package:flutter/material.dart';
//
// class CustomAnimation extends StatefulWidget {
//   const CustomAnimation({super.key});
//
//   @override
//   State<CustomAnimation> createState() => _CustomAnimationState();
// }
//
// class _CustomAnimationState extends State<CustomAnimation> {
//   bool isTapped = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Animation Align")),
//       body: InkWell(
//         onTap: () {
//           setState(() => isTapped = !isTapped);
//         },
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           color: Colors.grey[200],
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               // Left box
//               Expanded(
//                 child: AnimatedAlign(
//                   curve: Curves.easeInOutBack,
//                   duration: const Duration(seconds: 2),
//                   alignment: isTapped
//                       ? Alignment.center
//                       : Alignment.bottomRight,
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     color: Colors.green,
//                   ),
//                 ),
//               ),
//               // Right box
//               Expanded(
//                 child: AnimatedAlign(
//                   curve: Curves.easeInOutBack,
//                   duration: const Duration(seconds: 2),
//                   alignment: isTapped
//                       ? Alignment.topCenter
//                       : Alignment.bottomLeft,
//                   child: Container(height: 100, width: 100, color: Colors.red),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class CustomAnimation extends StatefulWidget {
//   const CustomAnimation({super.key});
//
//   @override
//   State<CustomAnimation> createState() => _CustomAnimationState();
// }
//
// class _CustomAnimationState extends State<CustomAnimation> {
//   bool isTapped = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("AnimatedPositioned")),
//       body: Center(
//         child: SizedBox(
//           width: double.infinity,
//           height: 400, // give Stack some height
//           child: Stack(
//             children: [
//               AnimatedPositioned(
//                 duration: const Duration(seconds: 2),
//                 curve: Curves.easeInOut,
//                 top: isTapped ? 250 : 50,
//                 left: isTapped ? 250 : 50,
//                 child: InkWell(
//                   onTap: () {
//                     setState(() {
//                       isTapped = !isTapped;
//                     });
//                   },
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     color: Colors.green,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
//
// class CustomAnimation extends StatefulWidget {
//   const CustomAnimation({super.key});
//
//   @override
//   State<CustomAnimation> createState() => _CustomAnimationState();
// }
//
// class _CustomAnimationState extends State<CustomAnimation> {
//   bool isTapped = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Tween Animation")),
//       body: GestureDetector(
//         onTap: () {
//           setState(() {
//             isTapped = !isTapped;
//           });
//         },
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           color: Colors.grey[200],
//           child: TweenAnimationBuilder<Offset>(
//             tween: Tween<Offset>(
//               begin: Offset(0, 0),
//               end: isTapped ? Offset(200, 300) : Offset(0, 0),
//             ),
//             duration: const Duration(seconds: 2),
//             curve: Curves.easeInOut,
//             builder: (context, offset, child) {
//               return Transform.translate(
//                 offset: offset,
//                 child: child,
//               );
//             },
//             child: Container(
//               width: 100,
//               height: 100,
//               color: Colors.green,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//

// import 'package:flutter/material.dart';
//
// class CustomAnimation extends StatefulWidget {
//   const CustomAnimation({super.key});
//
//   @override
//   State<CustomAnimation> createState() => _CustomAnimationState();
// }
//
// class _CustomAnimationState extends State<CustomAnimation>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<Offset> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//
//     // 1️⃣ AnimationController: controls the animation
//     _controller = AnimationController(
//       vsync: this, // required for SingleTickerProviderStateMixin
//       duration: const Duration(seconds: 3),
//     );
//
//     // 2️⃣ Tween: defines start and end value
//     _animation = Tween<Offset>(
//       begin: const Offset(0, 0),
//       end: const Offset(200, 300),
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
//
//     // Optional: loop animation back and forth
//     _controller.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         _controller.reverse();
//       } else if (status == AnimationStatus.dismissed) {
//         _controller.forward();
//       }
//     });
//
//     // Start the animation
//     _controller.forward();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose(); // always dispose animation controller
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Single Ticker Animation")),
//       body: Stack(
//         children: [
//           AnimatedBuilder(
//             animation: _animation,
//             builder: (context, child) {
//               return Positioned(
//                 left: _animation.value.dx,
//                 top: _animation.value.dy,
//                 child: child!,
//               );
//             },
//             child: Container(width: 100, height: 100, color: Colors.green),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomAnimation extends StatefulWidget {
  const CustomAnimation({super.key});

  @override
  State<CustomAnimation> createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  // late Animation<double> _rotationAnimation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    // 2️⃣ Tween: defines start and end value
    _animation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(200, 300),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    // _rotationAnimation = Tween<double>(begin: 0, end: 2 * 3.14)
    //     .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tween Animation")),
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              // print(_animation.value.dx);
              // return Transform.rotate(angle: _animation.value.dx, child: child);

              return Positioned(
                right: _animation.value.dx,
                bottom: _animation.value.dy,
                child: child!,
              );
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  // transform: Matrix4.rotationZ(_animation.value.dx),
                ),

              ],
            )
          ),
        ],
      ),
    );
  }
}
