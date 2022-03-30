import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categoryList.length,
          (index) => CategoryText(
            text: categoryList[index].title,
            urlIcon: categoryList[index].urlIcon,
            colorIcon: categoryList[index].colorCode,
            )
        ),
      ),
      
    );
  }
}
class CategoryText extends StatelessWidget {
  const CategoryText({
    Key? key,
    required this.text,
    required this.urlIcon,
    required this.colorIcon,
  }) : super(key: key);

  final String text;
  final String urlIcon;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: colorIcon,
            radius: 20,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.transparent,
              child: Image.asset(urlIcon),
            ),
          ),
          
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}