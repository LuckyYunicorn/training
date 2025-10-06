import 'package:flutter/material.dart';
import 'package:training/flutter_widgets/card.dart';
import 'package:training/flutter_widgets/container.dart';
import 'package:training/flutter_widgets/form.dart';
import 'package:training/flutter_widgets/grid_view_builder.dart';
import 'package:training/flutter_widgets/hit_test.dart';
import 'package:training/flutter_widgets/list_view_builder.dart';
import 'package:training/flutter_widgets/text.dart';
import 'package:training/flutter_widgets/text_form_field.dart';
import 'package:training/flutter_widgets/wrap_widget.dart';

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
        backgroundColor: Colors.grey.shade400,
        body: SafeArea(child: CustomListViewBuilder()),
      ),
    );
  }
}
