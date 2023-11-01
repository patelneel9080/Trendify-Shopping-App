import 'package:flutter/material.dart';
import 'package:neel_test/login_module/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'config/app_constant.dart';
import 'firstpage.dart';
import 'homepage.dart';
import 'login_module/loginpage.dart';
import 'testone.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref=await SharedPreferences.getInstance();
  userName=pref.getString("userName") ?? "";
  userPassword=pref.getString("password") ?? "";
  isLogin=pref.getBool("isLogin") ?? false;
  print("userName:$userName");
  print("userPassword:$userPassword");
  print("login value:$isLogin");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: SplashScreen()
    );
  }
}

