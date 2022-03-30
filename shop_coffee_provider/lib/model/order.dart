import 'dart:ffi';

import 'product.dart';

class Order {
    Product product;
    int qty = 1;
    double price;
    bool isCheck;
    
  Order({this.product, this.qty, this.price, this.isCheck}); //this.iconChange );

}
