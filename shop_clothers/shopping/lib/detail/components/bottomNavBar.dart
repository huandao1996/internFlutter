import 'package:flutter/material.dart';

import '../../../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(defaultPadding),
            ),
            child: Text(
              'Add to Cart',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              padding: const EdgeInsets.all(20),
            ),
            child: Text(
              'Buy Now',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
