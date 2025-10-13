import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomToast extends StatefulWidget {
  const CustomToast({super.key});

  @override
  State<CustomToast> createState() => _CustomToastState();
}

class _CustomToastState extends State<CustomToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toast")),
      body: ElevatedButton(
        onPressed: () {
          Fluttertoast.showToast(
            // webBgColor: "linear-gradient(to right, #00b09b, #96c93d)", // required for web
            // webPosition: "center", // optional: "top", "center", "bottom"
            msg: "Item added to cart!",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.TOP,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            // fontSize: 22,
            // fontAsset: "Hello"

          );
        },
        child: Text("Add Item"),
      ),
    );
  }
}
