import 'package:flutter/cupertino.dart';
import '../model/order.dart';

class CartNotify extends ChangeNotifier {
  int count = 0;
  List<int> listId = [];
  void add() {
    // check list product in item
    count += 1;
    notifyListeners();
  }
  void decrement(){
    count -= 1;
    notifyListeners();
  }
  void increment(){
    count += 1;
    notifyListeners();
  }
  // bool addId(){
  //   for(int i = 0; i < listId.length; i++) {
  //     if listId[i] == i => true;
  //   }
  // }

  // removeOrder(o) {
  //   items.remove(o);
  //   notifyListeners();
  // }

  // decrementQty(order) {
  //   final i = items.indexWhere((e) => e.product == order.product);
  //   if (items[i].qty == 1) {
  //     removeOrder(order);
  //   } else {
  //     items[i].qty -= 1;
  //     notifyListeners();
  //   }
  // }

  // incrementQty(order) {
  //   items[items.indexOf(order)].qty += 1;
  //   notifyListeners();
  // }
}