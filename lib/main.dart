import 'package:flutter/material.dart';

import 'app.dart';
import 'page_1.dart';
import 'page_2.dart';
import 'page_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: M_a()
    );
  }
}