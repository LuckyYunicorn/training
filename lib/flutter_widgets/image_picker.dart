// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// class CustomImagePicker extends StatefulWidget {
//   const CustomImagePicker({super.key});
//
//   @override
//   State<CustomImagePicker> createState() => _CustomImagePickerState();
// }
//
// class _CustomImagePickerState extends State<CustomImagePicker> {
//   XFile? xFile;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Image Picker")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           spacing: 20,
//           children: [
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: xFile != null
//                   ? FileImage(File(xFile!.path))
//                   : null,
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 try {
//                   final picker = ImagePicker();
//                   final pickedFile = await picker.pickImage(
//                     source: ImageSource.gallery,
//                   );
//                   if (pickedFile != null && pickedFile.path.isNotEmpty) {
//                     setState(() {
//                       xFile = pickedFile;
//                     });
//                   }
//                   setState(() {});
//                 } catch (e) {
//                   print(e);
//                 }
//               },
//               child: Text("Pick Image"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class CustomImagePicker extends StatefulWidget {
  const CustomImagePicker({super.key});

  @override
  State<CustomImagePicker> createState() => _CustomImagePickerState();
}

class _CustomImagePickerState extends State<CustomImagePicker> {
  XFile? pickedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Cropping")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: pickedImage != null
                  ? FileImage(File(pickedImage!.path))
                  : null,
            ),
            ElevatedButton(
              onPressed: () async {
                ImagePicker picker = ImagePicker();
                pickedImage = await picker.pickImage(
                  source: ImageSource.camera,
                );
                if (pickedImage != null) {
                  CroppedFile? croppedFile = await ImageCropper().cropImage(
                    sourcePath: pickedImage!.path,
                    uiSettings: [
                      AndroidUiSettings(
                        toolbarTitle: 'Crop Image',
                        toolbarColor: Colors.green,
                        toolbarWidgetColor: Colors.white,
                        backgroundColor: Colors.transparent,

                        aspectRatioPresets: [
                          CropAspectRatioPreset.original,
                          CropAspectRatioPreset.original,
                        ],
                      ),
                    ],
                  );
                  if (croppedFile != null) {
                    pickedImage = XFile(croppedFile.path);
                  }
                }

                setState(() {});
              },
              child: Text("Pick Image"),
            ),
          ],
        ),
      ),
    );
  }
}
