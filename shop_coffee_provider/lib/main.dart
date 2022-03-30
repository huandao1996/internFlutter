import 'package:flutter/material.dart';

import 'model/order.dart';
import 'model/product.dart';
import 'provider/order_notify.dart';

import 'package:provider/provider.dart';
import 'screen_order.dart';
import 'provider/cart_notify.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => OrderNotify()),
      ChangeNotifierProvider(create: (_) => CartNotify()),
    ],
    child: MyApp(),
  ) 
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đào Trọng Huân'),
        actions: <Widget>[
          Stack(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // go to screen order
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenOrder(),
                      ),
                    );
                  }),
              Positioned(
                top: 0,
                right: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(3),
                    child: Text(
                      context.watch<CartNotify>().count.toString(),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: GridView.count(
      children: items
            .map((e) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: ProductCard(e),
                ))
            .toList(),
      crossAxisCount: 2,
    ),
    );
  }
}

class ProductCard extends StatelessWidget {
  Product product;
  ProductCard(this.product);
  bool a ;
  @override
  Widget build(BuildContext context) {
   
    return GridTile(
      child: Image.network(
        product.image,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black45,
        title: Text(product.name, textAlign: TextAlign.start,),
        subtitle: Text(product.price.toString(), textAlign: TextAlign.start,),
          trailing: IconButton(
            //elevation: 0,
            onPressed: (){
            //var iconChang = !Order.iconChange;
            var o = Order(product: product, qty: 1, price: product.price );
            context.read<OrderNotify>().addOrder(o);
            context.read<CartNotify>().add();
            //context.read<CartNotify>().addId(a);
           
          },
            
            icon: Icon(
              //OrderNotify(order.product.desc) ? Icons.check :Icons.add;
              Icons.add
              ),
            ),
      ),
      );
  }
}

