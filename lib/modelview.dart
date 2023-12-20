import 'dart:ui';

import 'package:neel_test/Images/app_images.dart';

class ListModel {
  final  colour;
  final String image;
  final String title;
  final String subtitle;
  ListModel({required this.subtitle, required this.title, required this.image, required this.colour});
}

List<ListModel> ListModelView = [
    ListModel(colour: const Color(0xffF5E3DF), image: Product.product1, title: "Apple AirPods", subtitle: "\$549.00 (20k people buy this)"),
    ListModel(colour: const Color(0xffECECEC), image: Product.product2, title: "Logic Headset", subtitle: "\$249.00 (5k people buy this)"),
    ListModel(colour: const Color(0xffE4F2DF), image: Product.product3, title: "Protron Headset", subtitle: "\$109.00 (200k people buy this)"),
    ListModel(colour: const Color(0xffD5E0ED), image: Product.product4, title: "Galaxy BudsPro", subtitle: "\$492.00 (98k people buy this)"),
    ListModel(colour: const Color(0xff3E3D40), image: Product.product5, title: "Sony Headset", subtitle: "\$740.00 (17k people buy this)"),
];


class ProductModel {
  final String image;
  final String title;
  final String prize;
  ProductModel({required this.prize, required this.title, required this.image,} );
}

List<ProductModel> ProductModelView = [
  ProductModel(image: ProductImgs.model1, title: "Men Self Design Polo Neck Cotton Blend (220 gsm) Blue T-Shirt", prize: "Prize : ₹899 (14% off)"),
  ProductModel(image: ProductImgs.model2, title: "Men Self Design Polo Neck Cotton Blend (220 gsm) Black T-Shirt", prize: "Prize : ₹280 (71% off)"),
  ProductModel(image: ProductImgs.model3, title: "Men Self Design Polo Neck Cotton Blend (220 gsm) BottleGreen T-Shirt", prize: "Prize : ₹280 (71% off)"),
  ProductModel(image: ProductImgs.model4, title: "Men Self Design Polo Neck Cotton Blend (220 gsm) Green T-Shirt", prize: "Prize : ₹850 (14% off)"),
  ProductModel(image: ProductImgs.model5, title: "Men Self Design Polo Neck Cotton Blend (220 gsm) Green T-Shirt", prize: "Prize : ₹850 (14% off)"),
  ProductModel(image: ProductImgs.model6, title: "Men Self Design Polo Neck Cotton Blend (220 gsm) Green T-Shirt", prize: "Prize : ₹850 (14% off)"),
];