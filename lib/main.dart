import 'package:flutter/material.dart';
import 'package:hymn/constants.dart';
import 'package:hymn/screens/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(accentColor: kRandomColor),
      home: MainPage(),
    );
  }
}
