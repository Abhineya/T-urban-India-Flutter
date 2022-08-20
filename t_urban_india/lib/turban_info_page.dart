import 'package:flutter/material.dart';
import 'package:t_urban_india/home.dart';

class Turban_info_page extends StatefulWidget {
  const Turban_info_page({Key? key}) : super(key: key);

  @override
  State<Turban_info_page> createState() => _Turban_info_pageState();
}

class _Turban_info_pageState extends State<Turban_info_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Hello, User",
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
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 60.0,
                ),
                Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'T-urban',
                  style: TextStyle(
                    color: Color(0xffEB3527),
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
