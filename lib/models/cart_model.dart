import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["UG Pizza", "40000.00", "lib/images/5.png", Colors.green, "20"],
    ["Banana Pizza", "20000.50", "lib/images/6.png", Colors.yellow, "30"],
    ["Half Pizza", "7500.20", "lib/images/8.png", Colors.brown, "10"],
    ["Water", "1000.00", "lib/images/water.png", Colors.blue,"15"],
    ["Veg Pizza", "10000.00", "lib/images/1.png", Colors.orange, "10"],
    ["Chicken Pizza", "15000.00", "lib/images/2.png", Colors.red,"40"],
    ["Plain Pizza", "12000.00", "lib/images/3.png", Colors.blue,"50"],
    ["French Pizza", "25000.00", "lib/images/4.png", Colors.yellow,"25"],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
