import 'package:flutter/material.dart';

import 'CustomCheckBox.dart';
import 'custom_listview_builder.dart';
import 'custom_radio_button.dart';
import 'custom_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // home: LoginScreen(),
      // home: RadioCheckOutScreen(),
      // home: CheckBoxEvaluate(),
      home: CustomListBuilder(),
    );
  }
}

