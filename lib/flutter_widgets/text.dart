import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        height: 150,
        width: 100,
        child: Text(
          style: TextStyle(
            shadows: [ Shadow(
              color: Colors.grey,
              offset: Offset(2, 2),
              blurRadius: 3,
            ),],
          ),
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit LOREM.",
        ),
      ),
    );
  }
}
