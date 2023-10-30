import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neel_test/Images/app_images.dart';
import 'package:neel_test/modelview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _containerheight = 330;
  double _containerweidth = 360;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(color: Colors.deepPurpleAccent),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 265),
              child: Text(
                "Hi, Admin",
                style: GoogleFonts.nokora(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 123),
              child: Text(
                "What's today,s taste? ",
                style: GoogleFonts.nokora(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: size.height / 2.2,
              width: size.width,
              child: ListView.builder(
                itemCount: ListModelView.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:(context, index) {
                  return InkWell(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      height: _containerheight,
                      width: _containerweidth,
                      decoration: BoxDecoration(
                          color: Color(0xffF5F5F7),
                          borderRadius: BorderRadius.circular(60)),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 250,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            ListModelView[index].image),fit: BoxFit.cover))),
                            Text(
                              ListModelView[index].title,
                              style: GoogleFonts.robotoSlab(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.black),
                            ),
                            Text(
                              ListModelView[index].subtitle,
                              style: GoogleFonts.robotoSlab(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Padding(
// padding: const EdgeInsets.only(left: 14),
// child: Row(
// children: [
// Container(
// height: 390,
// width: 360,
// decoration: BoxDecoration(
// color: Colors.deepPurpleAccent,
// borderRadius: BorderRadius.circular(60)
// ),
// )
// ],
// ),
// )
