import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t_urban_india/home.dart';

class Dashboard extends StatefulWidget {
  String? userID;
  int currentIndex;
  Dashboard({this.userID, this.currentIndex = 0});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late String user = widget.userID!;

  TabController? _controller;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: widget.currentIndex,
        controller: _controller,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              radius: 40.0,
              child: SvgPicture.asset(
                'assets/ic_home.svg',
                color: Colors.orange,
              ),
            ),
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              radius: 40.0,
              child: SvgPicture.asset(
                'assets/ic_my_courses.svg',
                color: Colors.orange,
              ),
            ),
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              radius: 40.0,
              child: SvgPicture.asset(
                'assets/ic_settings.svg',
                color: Colors.orange,
              ),
            ),
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              radius: 40.0,
              child: SvgPicture.asset(
                'assets/ic_community.svg',
                color: Colors.orange,
              ),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            widget.currentIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(widget.currentIndex),
    );
  }
}
