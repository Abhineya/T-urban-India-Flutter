//@dart=2.9
import 'package:flutter/material.dart';
import 'package:t_urban_india/dashboard.dart';
// import 'package:t_urban_india/filter_page.dart';
import 'package:t_urban_india/home.dart';
import 'package:t_urban_india/login_page.dart';
import 'package:t_urban_india/onboardingScreen.dart';
import 'package:t_urban_india/turban_info_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'T-urban India',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Turban_info_page(),
    );
  }
}
