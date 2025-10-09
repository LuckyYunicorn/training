import 'package:flutter/material.dart';
import 'package:training/flutter_widgets/bottom_nav_bar.dart';
import 'package:training/flutter_widgets/card.dart';
import 'package:training/flutter_widgets/container.dart';
import 'package:training/flutter_widgets/drawer.dart';
import 'package:training/flutter_widgets/form.dart';
import 'package:training/flutter_widgets/gesture_inkwell.dart';
import 'package:training/flutter_widgets/grid_view_builder.dart';
import 'package:training/flutter_widgets/hit_test.dart';
import 'package:training/flutter_widgets/images.dart';
import 'package:training/flutter_widgets/list_view_builder.dart';
import 'package:training/flutter_widgets/refresh_indicator.dart';
import 'package:training/flutter_widgets/row_column.dart';
import 'package:training/flutter_widgets/stream_builder.dart';
import 'package:training/flutter_widgets/text.dart';
import 'package:training/flutter_widgets/text_form_field.dart';
import 'package:training/flutter_widgets/text_icon_elevated_button.dart';
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
      home: CustomRefreshIndicator(),
    );
  }
}
