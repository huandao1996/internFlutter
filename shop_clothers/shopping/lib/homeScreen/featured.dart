
import 'package:flutter/material.dart';
import '../models/listItem.dart';

class Products extends StatelessWidget {
  const Products({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          productList.length,
          (index) => CategoryProduct(
            title: productList[index].title,
            urlImage: productList[index].urlImage,
            firstPrice: productList[index].firstPrice,
            secondPrice: productList[index].secondPrice,
            // firstPrice: "\$17",
            // secondPrice: "\$16",

            )
        ),
      ),
      
    );
  }
}
class CategoryProduct extends StatelessWidget {
  const CategoryProduct({
    Key? key,
    required this.title,
    required this.urlImage,
    required this.firstPrice,
    required this.secondPrice,
  }) : super(key: key);

  final String title;
  final String urlImage;
  final String firstPrice;
  final String secondPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Newest Arrivals',
                style: TextStyle(
                  fontWeight: FontWeight. bold,
                ),
                ),
                Text(
                'View all',
                
                ),
            ],
          ),
          Image.asset(
               urlImage,
               width: 250,
               height: 200,
               //fit: BoxFit.fill,
             ),
          
          const SizedBox(height: 5),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
               children: [
                Text(
                      secondPrice,
                      style: const TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                Text(
                      firstPrice,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.orange,
                      ),
                ),
               ],
                ),
              
               ],
             ),
            
             
            ],
          ), 
    );  
  }
}