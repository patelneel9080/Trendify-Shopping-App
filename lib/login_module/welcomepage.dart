import 'package:flutter/material.dart';
import 'package:neel_test/Images/app_images.dart';
import 'package:neel_test/login_module/loginpage.dart';
import 'package:neel_test/login_module/signup_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 65,
              ),
              Text(
                "Welcome to Trendify",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Explore us",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black45),
              ),
              SizedBox(
                height: 65,
              ),
              Container(
                height: 380,
                width: size.width / 1.2,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(image: NetworkImage(BackgroudImg.wlcmimg),fit: BoxFit.cover)
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              }, child: Text("Log in"),style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.blueAccent),
                  elevation: MaterialStateProperty.all(2),
                  fixedSize: MaterialStateProperty.all(
                      const Size(250, 45)),
                  shadowColor: MaterialStateProperty.all(
                    Colors.black87,
                  ),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(24)))),),
              SizedBox(height: 8,),
              ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(),));
              }, child: Text("Sign Up",style: TextStyle(color: Colors.white),),style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.black54),
                  elevation: MaterialStateProperty.all(1),
                  fixedSize: MaterialStateProperty.all(
                      const Size(250, 45)),
                  shadowColor: MaterialStateProperty.all(
                    Colors.black87,
                  ),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(24)))),),
            ],
          ),
        ),
      ),
    );
  }
}
