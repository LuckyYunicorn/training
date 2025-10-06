import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomListViewBuilder extends StatefulWidget {
  const CustomListViewBuilder({super.key});

  @override
  State<CustomListViewBuilder> createState() => _CustomListViewBuilderState();
}

class _CustomListViewBuilderState extends State<CustomListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   // scrollDirection: Axis.horizontal, //use a fixed width to view the output
    //   // reverse: true,
    //   physics: BouncingScrollPhysics(),
    //   // shrinkWrap: true,
    //   // padding: EdgeInsets.all(8),200
    //   // itemExtent: 50,
    //   // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
    //   // cacheExtent: 10000, // pixels to prefetch before visible area
    //   addAutomaticKeepAlives: false,
    //   itemCount: 100,
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       leading: CircleAvatar(
    //         backgroundColor: index % 2 == 0 ? Colors.red : Colors.blue,
    //         child: Text("${index + 1}"),
    //       ),
    //       title: Text("Title"),
    //       subtitle: Text("Subtitle"),
    //     );
    //   },
    // );
    return ListView.custom(
      // reverse: true,
      // scrollDirection: Axis.horizontal,

      childrenDelegate: SliverChildListDelegate(
        List.generate(2, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          );
        }),
      ),
    );
  }
}
