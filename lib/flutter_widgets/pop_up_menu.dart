import 'package:flutter/material.dart';

class CustomPopUpMenu extends StatefulWidget {
  const CustomPopUpMenu({super.key});

  @override
  State<CustomPopUpMenu> createState() => _CustomPopUpMenuState();
}

class _CustomPopUpMenuState extends State<CustomPopUpMenu> {
  var _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pop Up Menu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _selectedValue != null
                ? Text(_selectedValue.toString())
                : Text("data"),
            PopupMenuButton(
              color: Colors.green,
              icon: Icon(Icons.ac_unit),
              iconColor: Colors.red,
              iconSize: 50,
              shadowColor: Colors.blue,
              elevation: 20,
              // child: Container(),

              padding: EdgeInsets.all(20),
              tooltip: "Click me",
              // constraints: BoxConstraints(
              //   minHeight: 10,
              //   maxHeight: 20
              // ),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),

              onSelected: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("Item 1"), value: "Lucky"),
                  PopupMenuItem(child: Text("Item 2"), value: 2),
                  PopupMenuItem(child: Text("Item 3"), value: 3),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}
