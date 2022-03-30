import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppBarDetail extends StatelessWidget with PreferredSizeWidget {
  const AppBarDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.favorite),
          const SizedBox(
            width: defaultPadding,
          ),
          Badge(
              position: BadgePosition.topEnd(top: 10, end: 10),
              badgeContent: const Text(
                '3',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              child:
                  IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
