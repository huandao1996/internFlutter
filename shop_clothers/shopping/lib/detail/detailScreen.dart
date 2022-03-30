import 'package:flutter/material.dart';
import '../detail/components/bottomNavBar.dart';
import '../detail/components/information_product.dart';
import '../detail/components/tabBar.dart';

//import '../../constants.dart';
import 'package:shopping/responsive.dart';
import 'components/appbar.dart';
import 'components/detail_banner.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AppBarDetail(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  DetailBanner(),
                  InformationProduct(),
                  TabBarDetail(),
                ],
              ),
            ),
          ),
          const BottomNavBar(),
        ],
      ),
    );
  }
}
