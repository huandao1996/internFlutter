import 'package:flutter/material.dart';

import '../../../constants.dart';

class InformationProduct extends StatelessWidget {
  const InformationProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Black Classy Shoes',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                '\$11',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '3.0 ',
                          style:
                              Theme.of(context).textTheme.subtitle2?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                        const Icon(
                          Icons.star,
                          size: 10,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  Text(
                    '6 Reviewer',
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                          color: Colors.black87,
                        ),
                  ),
                ],
              ),
              Text(
                '\$15',
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: Colors.black87,
                      decoration: TextDecoration.lineThrough,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
