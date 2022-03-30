import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
final List<String> bannerList = [
          "assets/images/products/banners/b1.jpg",
          "assets/images/products/banners/b2.jpg",
          "assets/images/products/banners/b3.jpg",
          "assets/images/products/banners/b4.jpg",
          "assets/images/products/banners/b5.jpg",
          "assets/images/products/banners/b6.jpg",
        ];
class HomeBanner extends StatelessWidget {
  const HomeBanner({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
  options: CarouselOptions(
          viewportFraction: 1,
          enlargeCenterPage: false, // phóng to mục được căn giữa nếu nó được đặt thành true.
          enableInfiniteScroll: true,
          autoPlay: true,
        ),
  items: bannerList.map((i) => Center(
    child: Image.asset(i,fit: BoxFit.fill,),
    ),).toList(),
  );
  }
}

// class HomeBanner extends StatelessWidget {
//   const HomeBanner({ Key? key }) : super(key: key);
  
//   @override
//   Widget build(BuildContext context) {
//     return  CarouselSlider(
//         options: CarouselOptions(
//           viewportFraction: 1,
//           enlargeCenterPage: true,
//           enableInfiniteScroll: false,
//           autoPlay: true,
//         ),
//         items: [
//            "assets/images/products/banners/b1.jpg",
//           "assets/images/products/banners/b2.jpg",
//           "assets/images/products/banners/b3.jpg",
//           "assets/images/products/banners/b4.jpg",
//           "assets/images/products/banners/b5.jpg",
//           "assets/images/products/banners/b6.jpg",
//         ]
//             .map(
//               (e) => ClipRRect(
//                 child: Stack(
//                   fit: StackFit.expand,
//                   children: <Widget>[
//                     Image.asset(
//                       e,
//                       fit: BoxFit.fill,
//                     ),
//                   ],
//                 ),
//               ),
//             )
//             .toList(),
//       );
//   }
// }