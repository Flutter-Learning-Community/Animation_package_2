import 'package:animation/sample.dart';
import 'package:flutter/material.dart';
import 'Home_page.dart';
import 'animated.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
