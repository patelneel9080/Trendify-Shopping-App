import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neel_test/Images/app_images.dart';
import 'package:neel_test/config/app_constant.dart';
import 'package:neel_test/firstpage.dart';
import 'package:neel_test/modelview.dart';
import 'onboardingscreen.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int activeIndex = 0;
  PageController controller = PageController(
    initialPage: 0,
    viewportFraction: 1,
  );
  double _containerheight = 330;
  double _containerweidth = 360;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
        title: Text("Hi $userName"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 28, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, size: 28),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstPage(),
                  ));
            },
          )
        ],
      ),
      drawer: const Drawer(),
      backgroundColor: Colors.deepPurpleAccent,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(color: Colors.deepPurpleAccent),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 56,
            ),
            Container(
                height: size.height / 19,
                width: size.width / 1.2,
                child: SearchBar(
                  leading: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18))),
                )),
            SizedBox(
              height: size.height / 24,
            ),
            Container(
              height: size.height / 6.5,
              width: size.width / 1.2,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(32)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  Container(
                    height: size.height,
                    width: size.width / 2.65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://dm0qx8t0i9gc9.cloudfront.net/watermarks/image/rDtN98Qoishumwih/young-woman-shopping-isolated-on-white-background_HarwcTr4Fg_SB_PM.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Big Sale",
                        style: GoogleFonts.adamina(
                            fontSize: 24,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600),
                      ),
                      Text("Get the trendy",style: GoogleFonts.adamina(color: Colors.black45,fontSize: 12),),
                      Text("fashion at a discount",style: GoogleFonts.adamina(color: Colors.black45,fontSize: 12),),
                      Text("of up to 50%",style: GoogleFonts.adamina(color: Colors.black45,fontSize: 12),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
