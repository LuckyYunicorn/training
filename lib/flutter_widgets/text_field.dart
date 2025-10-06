import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For inputFormatters

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        // inputFormatters: [
        //   FilteringTextInputFormatter.allow(
        //     RegExp(r'[a-z@.A-Z0-9]'),
        //   ), // Only allow certain characters
        //   // LengthLimitingTextInputFormatter(5), // Limit input length
        // ],
        maxLength: 30,
        textCapitalization: TextCapitalization.words,
        textInputAction: TextInputAction.send,
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          prefixIcon: Icon(Icons.email, color: Colors.red),
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.red, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.green, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.redAccent, width: 2),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
