import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImages extends StatefulWidget {
  const CustomImages({super.key});

  @override
  State<CustomImages> createState() => _CustomImagesState();
}

class _CustomImagesState extends State<CustomImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Container(
                color: Colors.blue,
                height: 200,
                width: 200,
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzrY0vjWei7Zg-SLCp2o_XFn-K-xTOEVAPrA&s",

                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.image_not_supported_outlined);
                  },
                  // fit: BoxFit.cover,
                  // alignment: AlignmentGeometry.bottomCenter,
                  // color: Colors.red,
                  // cacheWidth: 33,
                  // bundle: ,
                  // centerSlice: Rect.fromLTRB(left, top, right, bottom),
                  // scale: 1,

                  // errorBuilder: (context, error, stackTrace) {
                  //   if(error == true){
                  //     return Center(
                  //       child: Icon(Icons.image_not_supported_outlined),
                  //     );
                  //   }

                  // },
                ),
              ),
              Container(
                color: Colors.blue,
                height: 200,
                width: 200,

                child: CachedNetworkImage(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzrY0vjWei7Zg-SLCp2o_XFn-K-xTOEVAPrA&s",
                  // repeat: ImageRepeat.repeatX,
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  // imageBuilder: (context, imageProvider) {
                  //   return Container(
                  //     decoration: BoxDecoration(
                  //       image: DecorationImage(image: imageProvider),
                  //     ),
                  //   );
                  // },

                  // progressIndicatorBuilder: (context, url, progress) {
                  //   if (progress.downloaded == true) {
                  //     return Center(child: CircularProgressIndicator());
                  //   } else {
                  //     return Center(child: Text("data"));
                  //   }
                  // },
                ),
              ),
              // Image.asset("assets/images/download.jpg"),
              // Image.asset("assets/images/wallpaper1.jpg"),
              // Image.asset("assets/images/wallpaper1.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
