import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neel_test/Images/app_images.dart';
import 'package:neel_test/firstpage.dart';
import 'package:neel_test/home_page.dart';
import 'package:neel_test/login_module/loginpage.dart';
import 'package:neel_test/modelview.dart';

class HomePageVIew extends StatefulWidget {
  const HomePageVIew({super.key});

  @override
  State<HomePageVIew> createState() => _HomePageVIewState();
}

class _HomePageVIewState extends State<HomePageVIew> {
  int _activeindex = 0;
  double _containerheight = 330;
  double _containerweidth = 360;

  List<IconData> iconlist = [
    Icons.home,
    Icons.search,
    Icons.data_saver_off_outlined,

  ];
  final List<Widget> _pages = [
    Home_Page(),
    FirstPage(),
    LoginPage(),
  ];

  IconData navtoSreen(int index) {
    return iconlist[index];
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconlist,
        gapWidth: 8,
        activeIndex: _activeindex,
        elevation: 3,
        iconSize: 28,
        gapLocation: GapLocation.none,
        height: 60,
        leftCornerRadius: 24,
        rightCornerRadius: 24,
        inactiveColor: Colors.black,
        activeColor: Colors.white,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        backgroundColor: Colors.purpleAccent,
        onTap: (index) => setState(() => _activeindex = index),
      ),
      body: IndexedStack(
          index: _activeindex,
          children: _pages,
      )
    );
  }
}
