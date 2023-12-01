// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_checkup/View/Cart.dart';
import 'package:health_checkup/View/Home_page.dart';
import 'package:health_checkup/View/Select_Time.dart';
import 'package:health_checkup/View/success.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
    );
  }
}
