import 'dart:ui';

import 'package:neel_test/Images/app_images.dart';

class ListModel {
  final  colour;
  final String image;
  ListModel({required this.image, required this.colour});
}

List<ListModel> ListModelView = [
    ListModel(colour: Color(0xffF5E3DF), image: Product.product1),
    ListModel(colour: Color(0xffECECEC), image: Product.product2),
    ListModel(colour: Color(0xffE4F2DF), image: Product.product3),
    ListModel(colour: Color(0xffD5E0ED), image: Product.product4),
    ListModel(colour: Color(0xff3E3D40), image: Product.product5),
];