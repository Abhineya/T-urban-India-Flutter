import 'package:flutter/material.dart';

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
        primarySwatch: Colors.pink,
      ),
      home: Turban(),
    );
  }
}

class Turban extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.pink,child: Text('T-urban India'),);
  }
}

