import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neel_test/Images/app_images.dart';
import 'package:neel_test/config/app_constant.dart';
import 'package:neel_test/firstpage.dart';
import 'package:neel_test/login_module/loginpage.dart';
import 'package:neel_test/modelview.dart';
import 'package:neel_test/productinfopage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'onboardingscreen.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<String> items = [
    Product.product1,
    Product.product2,
    Product.product3,
    Product.product4,
    Product.product5
  ];
  int activeindex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart, size: 28),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FirstPage(),
                    ));
              },
            )
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              ElevatedButton(
                  onPressed: () async {
                    SharedPreferences pref =
                        await SharedPreferences.getInstance();
                    pref.remove("isLogin");
                    // pref.setBool("isLogin",false);
                    // isLogin=pref.getBool("isLogin")!;
                    // print("isLogin:$isLogin");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  child: Text(
                    "LogOut",
                    style: GoogleFonts.adamina(),
                  )),
            ],
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(color: Colors.deepPurpleAccent),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height / 92,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    "Hello $userName,",
                    style: GoogleFonts.roboto(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: size.height / 32,
                ),
                Container(
                  height: size.height / 6.5,
                  width: size.width / 1.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 0,
                      ),
                      Container(
                        height: size.height,
                        width: size.width / 2.65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            image: const DecorationImage(
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
                          Text(
                            "Get the trendy",
                            style: GoogleFonts.adamina(
                                color: Colors.black45, fontSize: 12),
                          ),
                          Text(
                            "fashion at a discount",
                            style: GoogleFonts.adamina(
                                color: Colors.black45, fontSize: 12),
                          ),
                          Text(
                            "of up to 50%",
                            style: GoogleFonts.adamina(
                                color: Colors.black45, fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 35,
                  width: 350,
                  child: SegmentedTabControl(
                      backgroundColor: Colors.transparent,
                      indicatorColor: Colors.white,
                      tabTextColor: Colors.white,
                      selectedTabTextColor: Colors.black,
                      squeezeIntensity: 2,
                      height: 35,
                      tabPadding: const EdgeInsets.symmetric(),
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      tabs: const [
                        SegmentTab(label: 'All'),
                        SegmentTab(label: 'Popular'),
                        SegmentTab(label: 'Recent'),
                        SegmentTab(label: 'Trending'),
                      ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: size.height,
                    width: size.width,
                    child: TabBarView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 12),
                              margin: EdgeInsets.all(11),
                              color: Colors.transparent,
                              child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 6,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 12,
                                        mainAxisSpacing: 12,
                                      childAspectRatio: .57
                                    ),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductInfo()));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(image: NetworkImage(ProductModelView[index].image),fit: BoxFit.fill),
                                          borderRadius: BorderRadius.circular(12)),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: 78,
                                            width: size.width,
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(12)
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(ProductModelView[index].title,style: GoogleFonts.roboto(fontSize: 12),),
                                                SizedBox(height: 5,),
                                                Text(ProductModelView[index].prize,style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )),
                          Container(
                            color: Colors.blue.shade100,
                          ),
                          Container(
                            color: Colors.orange.shade200,
                          ),
                          Container(
                            color: Colors.orange.shade200,
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
