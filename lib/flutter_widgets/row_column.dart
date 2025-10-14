// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
//
// class CustomRowColumn extends StatelessWidget {
//   const CustomRowColumn({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           // hitTestBehavior: HitTestBehavior.opaque,
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             spacing: 10,
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.baseline,
//             // verticalDirection: VerticalDirection.down,// works on column
//             // textDirection: TextDirection.rtl, // works on row
//             textBaseline: TextBaseline.alphabetic,
//             mainAxisSize: MainAxisSize.min,
//
//             children: [
//               Text("a"),
//               Text("c"),
//               Text("d"),
//               Text("ab"),
//               Text("data5"),
//               Text("data6"),
//               Text("data7"),
//               Text("data8"),
//               Text("a"),
//               Text("c"),
//               Text("d"),
//               Text("ab"),
//               Text("data5"),
//               Text("data6"),
//               Text("data7"),
//               Text("data8"),
//               // Column(
//               //   // verticalDirection: VerticalDirection.up,
//               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //   children: [
//               //     Text("data1"),
//               //     Text("data2"),
//               //     Text("data3"),
//               //     Text("data4"),
//               //     Text("data5"),
//               //   ],
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRowColumn extends StatefulWidget {
  const CustomRowColumn({super.key});

  @override
  State<CustomRowColumn> createState() => _CustomRowColumnState();
}

class _CustomRowColumnState extends State<CustomRowColumn> {
  int count  = 0;
  Future<void> increment()async{
    setState(() {
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        onRefresh: () async{
         await increment();
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    Container(color: Colors.green, height: 100, width: 100),
                    Text("$count"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
