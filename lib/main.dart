import 'package:flutter/material.dart';
import './screens/input_page.dart';
import 'constants.dart';
import 'screens/result_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kBackgroundColor,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
