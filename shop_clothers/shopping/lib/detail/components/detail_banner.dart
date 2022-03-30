import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping/responsive.dart';

class DetailBanner extends StatelessWidget {
  const DetailBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1.5 : 1.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/products/shoes/shoe_6.jpeg",
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
