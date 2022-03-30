import 'package:flutter/material.dart';
import 'package:flutterproviderfood/provider/order_notify.dart';
import 'package:provider/provider.dart';
import '../model/order.dart';
import '/provider/cart_notify.dart';

class OrderCard extends StatelessWidget {
  
  Order order;
  OrderCard(this.order);

  
  @override
  Widget build(BuildContext context) {
    final po = Provider.of<OrderNotify>(context);
    final ca = Provider.of<CartNotify>(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.network(
          order.product.image,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0),
        Expanded(
        child: Row(
          children: [
            Expanded(
              //height: 100,
              child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  order.product.name,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  (order.qty * order.price).toString(),
                )

              ],
            ),
            ),
            //const SizedBox(width: 50,),
            Expanded(
              //height: 100,

              child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (){
                    po.decrementQty(order);
                    ca.decrement();
                  },
                  icon: Icon(Icons.remove),
                ),
                  Container(
                    width: 20,
                    child: Text(
                      order.qty.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                IconButton(
                  onPressed: (){
                    po.incrementQty(order);
                    ca.increment();
                  },
                  icon: Icon(Icons.add),
                ),
              ]
            ),
            ),
              ],
            ),
          ),
      ],
    );
  }
}
