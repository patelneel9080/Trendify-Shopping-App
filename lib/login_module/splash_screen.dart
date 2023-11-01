import 'package:flutter/material.dart';
import 'package:neel_test/config/app_constant.dart';
import 'package:neel_test/homepage.dart';
import 'package:neel_test/login_module/loginpage.dart';
import 'package:neel_test/testone.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => (isLogin) ? HomePageVIew():const LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Center(
        child: Text(
          "Splash Screen",
          style: TextStyle(
              color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
