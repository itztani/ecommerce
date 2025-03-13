import 'package:flutter/material.dart';
import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/pages/login.dart';
import 'package:ecommerce/pages/signup.dart';
import 'package:ecommerce/pages/onboard.dart';
import 'package:ecommerce/pages/details.dart';
import 'package:ecommerce/pages/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Onboard(),
    );
  }
}
