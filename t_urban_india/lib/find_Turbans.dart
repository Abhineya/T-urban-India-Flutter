import 'package:flutter/material.dart';
import 'package:t_urban_india/home.dart';

class Find_Turbans extends StatefulWidget {
  const Find_Turbans({Key? key}) : super(key: key);

  @override
  State<Find_Turbans> createState() => _Find_TurbansState();
}

class _Find_TurbansState extends State<Find_Turbans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Navigate Location",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(),
    );
  }
}
