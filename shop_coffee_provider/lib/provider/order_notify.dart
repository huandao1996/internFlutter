import 'package:flutter/cupertino.dart';
import '../model/order.dart';
Order order;
class OrderNotify extends ChangeNotifier {
  //Order order;
  //OrderNotify(this.order);

  List<Order> items = [];

  void addOrder(Order order) {
    // check list product in item
    //print(e);
    final i = items.indexWhere((e) => e.product == order.product);
    //print(i);
    print(i);
    print(order.product);
    
    if (i > -1) {
      items[i].qty += order.qty;
    } else {
      this.items.add(order);
      
      //print(order);
    }
    notifyListeners();
  }

  removeOrder(o) {
    items.remove(o);
    notifyListeners();
  }

  decrementQty(order) {
    final i = items.indexWhere((e) => e.product == order.product);
    if (items[i].qty == 1) {
      removeOrder(order);
    } else {
      items[i].qty -= 1;
      notifyListeners();
    }
  }

  incrementQty(order) {
    items[items.indexOf(order)].qty += 1;
    notifyListeners();
  }

   bool productExist(int product){
    for (int i = 0; i < 15; i++){
      if(items[i].product.desc == null) return false;
      return true;
    }
    
  }
}
