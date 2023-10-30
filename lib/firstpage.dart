import 'package:flutter/material.dart';
import 'package:neel_test/Images/app_images.dart';
import 'package:neel_test/modelview.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Detail Profuct",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 3,
              width: size.width,
              decoration:  BoxDecoration(
                color:ListModelView[activeIndex].colour,
                image: DecorationImage(image: NetworkImage(ListModelView[activeIndex].image),fit: BoxFit.cover)
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Airpods max by Apple",
                            style:
                                TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          Text(
                            "\$ 1999,99 ( 219 people buy this )",
                            style:
                                TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                          )
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xffC7C7C7),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Choose the colour",
                        style: TextStyle(
                            color: Color(0xffC7C7C7), fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        height: 60,
                        child: ListView.builder(
                        itemCount: ListModelView.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              activeIndex=index;
                              setState(() {});
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 6),
                              height: 68,
                              width: 68,
                              decoration: BoxDecoration(
                                color: ListModelView[index].colour,
                                image: DecorationImage(image: NetworkImage(ListModelView[index].image),fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(12))
                              ),
                            ),
                          );
                        },),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Divider(
                    color: Colors.black45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(ProductImages.image2),
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Apple Store",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                "online 12m ago",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {},
                          child: const Text(
                            "Follow",
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description of product",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        maxLines: 5,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(Size(70, 45)),
                              backgroundColor:
                              MaterialStateProperty.all(Color(0xffF0F2F1))),
                          onPressed: () {},
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.black),
                          )),
                      const SizedBox(width: 50,),
                      ElevatedButton(
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(Size(90, 45)),
                              backgroundColor:
                              MaterialStateProperty.all(Color(0xffF0F2F1))),
                          onPressed: () {},
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
