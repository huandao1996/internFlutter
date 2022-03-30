
import 'package:flutter/material.dart';
import '../models/shoesList.dart';

class Shoes extends StatelessWidget {
  const Shoes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          shoeList.length,
          (index) => CategoryShoe(
            title: shoeList[index].title,
            urlImage: shoeList[index].urlImage,
            firstPrice: shoeList[index].firstPrice,
            secondPrice: shoeList[index].secondPrice,
            

            )
        ),
      ),
      
    );
  }
}
class CategoryShoe extends StatelessWidget {
  const CategoryShoe({
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
      width: 260,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Featured Products',
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
               width: 260,
               height: 260,
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