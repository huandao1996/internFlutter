import 'package:flutter/material.dart';
class Category {
  final String title;
  final String urlIcon;
  final Color colorCode; 
  Category({
    required this.title,
    required this.urlIcon, 
    required this.colorCode
    });

}
List<Category> categoryList = [
  Category(
    title: "Men",
    urlIcon: "assets/images/icons/ic_men.png",
    colorCode: Colors.red,
  ),
  Category(
    title: "Women",
    urlIcon: "assets/images/icons/ic_woman.png",
    colorCode: Colors.blue,
  ),
  Category(
    title: "Baby & Kids",
    urlIcon: "assets/images/icons/ic_kids.png",
    colorCode: Colors.yellow,
  ),
  Category(
    title: "Bags",
    urlIcon: "assets/images/icons/ic_bag.png",
    colorCode: Colors.blue,
  ),
  Category(
    title: "Decor",
    urlIcon: "assets/images/icons/ic_decor.png",
    colorCode: Colors.green,
  ),
  Category(
    title: "Sport",
    urlIcon: "assets/images/icons/ic_sports.png",
    colorCode: Colors.blue,
  ),
];