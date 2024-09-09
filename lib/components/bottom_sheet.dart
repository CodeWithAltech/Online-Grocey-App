import 'package:flutter/material.dart';
import 'package:online_grocey_app/models/cart_model.dart';
import 'package:provider/provider.dart';

class BottomModel extends StatelessWidget {
  const BottomModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(builder: (context, value, child) {
      return Container(
        child: Center(child: Text('Hello${value.calculateTotal()}')),
      );
    });
  }
}
