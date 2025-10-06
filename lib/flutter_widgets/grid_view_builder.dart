import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomGridViewBuilder extends StatefulWidget {
  const CustomGridViewBuilder({super.key});

  @override
  State<CustomGridViewBuilder> createState() => _CustomGridViewBuilderState();
}

class _CustomGridViewBuilderState extends State<CustomGridViewBuilder> {
  List<String> imageList = [
    "https://images.pexels.com/photos/1315655/pexels-photo-1315655.jpeg?cs=srgb&dl=pexels-jamshed-ahmad-560590-1315655.jpg&fm=jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREwlMY1Z_R0EmLwDcG9U1zogIIcMNaKBisDg&s",
    "https://cdn.pixabay.com/photo/2017/05/31/16/39/windows-2360920_1280.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3eX-D-RNGANk5gT8Qw0iJ8M_6AGoIv_RjtQ&s"
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW8bVpdlziY_-StS8dfylEANbguIfFmy4uOg&s",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // crossAxisCount: 3,
      // crossAxisSpacing: 8,
      // mainAxisSpacing: 8,

      // scrollDirection: Axis.horizontal,
      // reverse: true,
      // hitTestBehavior: HitTestBehavior.deferToChild,

      // itemCount: 64,

      // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //   maxCrossAxisExtent: 50,
      //   mainAxisExtent: 500,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   childAspectRatio: 1, // width / height ratio
      // ),

      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 8,
      //   mainAxisSpacing: 8,
      //   childAspectRatio: 1,
      //   mainAxisExtent: 150,
      // ),

      // primary: false,
      // children: List.generate(4, (index) {
      //   return Container(
      //     decoration: BoxDecoration(
      //       color: Colors.green,
      //       border: Border.all(color: Colors.green),
      //       image: DecorationImage(
      //         fit: BoxFit.cover,
      //         image: NetworkImage(
      //
      //           imageList[index],
      //         ),
      //       ),
      //     ),
      //   );
      // }),

      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.green),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(

                imageList[index],
              ),
            ),
          ),
        );
      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
    );
  }
}
