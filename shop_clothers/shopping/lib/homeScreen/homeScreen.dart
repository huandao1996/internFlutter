import 'package:flutter/material.dart';
import 'categoryHome.dart';
import 'homeBanner.dart';
import 'newest.dart';
import 'shoeList.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          HomeBanner(),
          CategoryHome(),
          Products(),
          Shoes(),
          
        ],
      ),
    );
  }
}
