import 'package:flutter/material.dart';
import 'package:shopping/models/category.dart';

class Categories extends StatelessWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: List.generate(
          categoryList.length,
          (index) => CategoryText(text: categoryList[index].title, urlIcon: categoryList[index].urlIcon)
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
  }) : super(key: key);

  final String text;
  final String urlIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            urlIcon,
            width: 18,
            height: 18,
          ),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}