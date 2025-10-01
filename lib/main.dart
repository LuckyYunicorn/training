
import 'package:flutter/material.dart';
import 'package:training/flutter_widgets/card.dart';
import 'package:training/flutter_widgets/container.dart';
import 'package:training/flutter_widgets/text.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.white,
        body: CustomCard(),
      ),
    );
  }
}
