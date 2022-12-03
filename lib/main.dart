
import 'package:flutter/material.dart';
import 'package:osin/screens/bottom_navigation.dart';
import 'package:osin/screens/first_screen.dart';
import 'package:osin/screens/second_screens.dart';
import 'package:osin/screens/tabs.dart';
import 'package:osin/screens/third_screen.dart';
import 'package:osin/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  OurNavigation(),
    );
  }
}

