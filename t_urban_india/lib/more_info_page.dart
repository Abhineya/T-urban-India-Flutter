import 'package:flutter/material.dart';
import 'package:t_urban_india/home.dart';

class More_info extends StatefulWidget {
  const More_info({Key? key}) : super(key: key);

  @override
  State<More_info> createState() => _More_infoState();
}

class _More_infoState extends State<More_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Information",
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
