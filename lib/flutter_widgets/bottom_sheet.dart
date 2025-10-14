// import 'package:flutter/material.dart';
// import 'package:training/flutter_widgets/text_field.dart';
//
// class CustomBottomSheet extends StatelessWidget {
//   const CustomBottomSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showModalBottomSheet(
//               context: context,
//
//               backgroundColor: Colors.red,
//
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                   // ✅ Correct
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                 ),
//               ),
//               isScrollControlled: true, // important for draggable sheet
//               builder: (context) {
//                 return DraggableScrollableSheet(
//                   initialChildSize: 0.5,
//                   minChildSize: 0.3,
//                   maxChildSize: 0.9,
//                   expand: false,
//                   builder:
//                       (
//                         BuildContext context,
//                         ScrollController scrollController,
//                       ) {
//                         return Container(
//                           padding: EdgeInsets.all(16),
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             borderRadius: BorderRadius.vertical(
//                               top: Radius.circular(20),
//                             ),
//                           ),
//                           child: SingleChildScrollView(
//                             controller:
//                                 scrollController, // important for draggable + scroll
//                             child: Column(
//                               children: [
//                                 CustomTextField(),
//                                 CustomTextField(),
//                                 CustomTextField(),
//                                 CustomTextField(),
//                                 CustomTextField(),
//                                 CustomTextField(),
//                                 SizedBox(height: 20),
//                                 ElevatedButton(
//                                   onPressed: () {},
//                                   child: Text("Submit"),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                 );
//               },
//             );
//           },
//           child: Text('Show Modal Bottom Sheet'),
//         ),
//       ),
//     );
//   }
// }
//
// // // import 'package:flutter/material.dart';
// // // import 'package:training/flutter_widgets/text_field.dart';
// // //
// // // class CustomBottomSheet extends StatelessWidget {
// // //   const CustomBottomSheet({super.key});
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(title: Text("BottomSheet Example")),
// // //       body: SingleChildScrollView(
// // //         child: Column(
// // //           children: [
// // //             Container(height: 300, color: Colors.blue),
// // //
// // //             Container(height: 300, color: Colors.white),
// // //             Builder(
// // //               builder: (context) {
// // //                 return ElevatedButton(
// // //                   onPressed: () {
// // //                     Scaffold.of(context).showBottomSheet(
// // //                       // enableDrag: false,
// // //                       backgroundColor: Colors.red,
// // //                       (context) => Container(
// // //                         height: 250,
// // //                         color: Colors.green,
// // //                           child: SingleChildScrollView(
// // //                       child: Column(
// // //                         // spacing: 10,
// // //                         children: [
// // //                           ElevatedButton(onPressed: (){
// // //                             Navigator.pop(context);
// // //                           }, child: Text("Close"),),
// // //                           CustomTextField(),
// // //                           CustomTextField(),
// // //                           CustomTextField(),
// // //                           CustomTextField(),
// // //                           CustomTextField(),
// // //                           CustomTextField(),
// // //                           ElevatedButton(
// // //                             onPressed: () {},
// // //                             child: Text("Submit"),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                       ),
// // //                     );
// // //                   },
// // //                   child: Text("Open Bottom Sheet"),
// // //                 );
// // //               },
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
//
// //
// // import 'package:flutter/material.dart';
// // import 'package:training/flutter_widgets/text_field.dart'; // Your custom text field
// //
// // class CustomBottomSheet extends StatelessWidget {
// //   const CustomBottomSheet({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: ElevatedButton(
// //           onPressed: () {
// //             showModalBottomSheet(
// //               showDragHandle: true,
// //               context: context,
// //               isScrollControlled: true, // allows full screen drag
// //               backgroundColor: Colors.white, // for rounded corners
// //               builder: (context) {
// //                 return DraggableScrollableSheet(
// //                   expand: false, // doesn't occupy full screen initially
// //                   initialChildSize: 0.5, // initial height (50% of screen)
// //                   minChildSize: 0.3,     // can drag down to 30%
// //                   maxChildSize: 0.9,     // can drag up to 90%
// //                   builder: (context, scrollController) {
// //                     return Container(
// //                       decoration: BoxDecoration(
// //                         color: Colors.blue,
// //                         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// //                       ),
// //                       padding: EdgeInsets.all(16),
// //                       child: SingleChildScrollView(
// //                         controller: scrollController, // important!
// //                         child: Column(
// //                           children: [
// //                             CustomTextField(),
// //                             CustomTextField(),
// //                             CustomTextField(),
// //                             CustomTextField(),
// //                             CustomTextField(),
// //                             CustomTextField(),
// //                             SizedBox(height: 20),
// //                             ElevatedButton(
// //                               onPressed: () {},
// //                               child: Text("Submit"),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     );
// //                   },
// //                 );
// //               },
// //             );
// //           },
// //           child: Text('Show Draggable Bottom Sheet'),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// // import 'package:flutter/material.dart';
// //
// // class CustomBottomSheet extends StatelessWidget {
// //   const CustomBottomSheet({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       bottomSheet: BottomSheet(
// //         shape: CircleBorder(),
// //         clipBehavior: Clip.hardEdge,
// //         showDragHandle: true,
// //         onDragEnd: (details, {required isClosing}) {
// //           Navigator.pop(context);
// //         },
// //         backgroundColor: Colors.red,
// //         enableDrag: true,
// //         onClosing: () {
// //         Navigator.pop(context);
// //       },
// //   builder: (context) {
// //         return Container(
// //           height: 100,
// //           color: Colors.blue,
// //         );
// //       },),
// //     );
// //   }
// // }

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet")),
      body: Column(
        spacing: 15,
        children: [
          // Builder(
          //   builder: (context) {
          //     return ElevatedButton(onPressed: (){
          //       Scaffold.of(context).showBottomSheet((context) {
          //
          //         return Container(
          //           height: 200,
          //           color: Colors.blue,
          //         );
          //       },);
          //     }, child: Text("Open Bottom Sheet"),);
          //   }
          // ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.blue,
                      ),
                      height: 200,
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            maxLines: 1,
                            "Title",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Description Description"),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Text("Alert"),
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(color: Colors.red);
                },
              );
            },
            child: Text("Open bottom sheet"),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                ..hideCurrentMaterialBanner()
                ..showMaterialBanner(
                  MaterialBanner(
                    content: const Text("No internet connection!"),
                    leading: const Icon(Icons.wifi_off, color: Colors.white),
                    backgroundColor: Colors.redAccent,
                    actions: [
                      TextButton(
                        onPressed: () => ScaffoldMessenger.of(
                          context,
                        ).hideCurrentMaterialBanner(),
                        child: const Text(
                          "DISMISS",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
            },
            child: Text("Material Banner"),
          ),
          ElevatedButton(
            onPressed: () {
              Flushbar(
                flushbarPosition: FlushbarPosition.TOP,
                backgroundColor: Colors.green,

                title: "Success",
                message: "Data submitted successfully",
                duration: Duration(seconds: 2),
                icon: Icon(Icons.done, color: Colors.white),
              ).show(context);
            },
            child: Text("FlushBar"),
          ),
        ],
      ),
    );
  }
}
