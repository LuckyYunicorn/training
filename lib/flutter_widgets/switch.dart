import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch")),
      body: Center(
        child: Column(
          children: [
            Text(isToggled.toString()),
            Switch.adaptive(
              // padding: EdgeInsets.all(20),
              // focusColor: Colors.green,
              // autofocus: true,
              // overlayColor: WidgetStateProperty.all(Colors.red),
              activeTrackColor: Colors.red,
              inactiveTrackColor: Colors.grey,

              activeThumbColor: Colors.green,
              inactiveThumbColor: Colors.white,

              splashRadius: 20,
              thumbIcon: WidgetStateProperty.resolveWith<Icon?>((states) {
                if (states.contains(WidgetState.selected)) {
                  return Icon(
                    Icons.account_balance_outlined,
                    color: Colors.white,
                    size: 20,
                  );
                } else {
                  return Icon(Icons.ac_unit, color: Colors.black, size: 20);
                }
              }),
              activeThumbImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
              ),

              value: isToggled,
              onChanged: (value) {
                setState(() {
                  isToggled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
