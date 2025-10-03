import 'package:flutter/material.dart';
import 'package:training/flutter_widgets/card.dart';
import 'package:training/flutter_widgets/container.dart';
import 'package:training/flutter_widgets/form.dart';
import 'package:training/flutter_widgets/text.dart';
import 'package:training/flutter_widgets/text_form_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: CustomForm(),
      ),
    );
  }
}
