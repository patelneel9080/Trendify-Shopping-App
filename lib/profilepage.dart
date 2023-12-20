import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neel_test/Images/app_images.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/app_constant.dart';
import 'login_module/loginpage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.deepPurpleAccent,
        child: Column(
          children: [
            SizedBox(
              height: size.height / 10,
            ),
            ClipRect(
              child: Container(
                height: size.height / 4,
                width: size.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: const DecorationImage(image: NetworkImage(HomePageImg.profilebkgimg),fit: BoxFit.cover,opacity: .65),
                    borderRadius: BorderRadius.circular(32)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height / 125,
                    ),
                    ClipOval(
                      child: Container(
                        height: 125,
                        width: 125,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(HomePageImg.profileimg),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "$userName",
                      style: GoogleFonts.roboto(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height / 24,
            ),
            ClipRect(
              child: Container(
                height: size.height / 2,
                width: size.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: const DecorationImage(image: NetworkImage(HomePageImg.profilebkgimg2),fit: BoxFit.cover,opacity: .84),
                    borderRadius: BorderRadius.circular(32)),
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "My Orders",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(width: size.width / 2),
                          const Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height / 29,
                      ),
                      Row(
                        children: [
                          const Text(
                            "My Favourite",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(width: size.width / 2.25),
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height / 29,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Credits & Coupons",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(width: size.width / 3.1),
                          const Icon(
                            Icons.add_card,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height / 29,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Invite Friends",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(width: size.width / 2.3),
                          const Icon(
                            Icons.person_add_alt_1,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height / 29,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Shipping Address",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(width: size.width / 2.96),
                          const Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height / 28,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Account Settings",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(width: size.width / 2.86),
                          const Icon(
                            Icons.settings,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height / 28,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Log Out",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(width: size.width / 1.82),
                          InkWell(
                              onTap: () async {
                                SharedPreferences pref =
                                    await SharedPreferences.getInstance();
                                pref.setBool("isLogin", false);
                                isLogin = pref.getBool("isLogin")!;
                                print("isLogin:$isLogin");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ));
                              },
                              child: const Icon(
                                Icons.exit_to_app,
                                color: Colors.white,
                              ))
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
