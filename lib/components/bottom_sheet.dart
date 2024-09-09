import 'package:flutter/material.dart';
import 'package:online_grocey_app/models/cart_model.dart';
import 'package:provider/provider.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class BottomModel extends StatelessWidget {
  const BottomModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(builder: (context, value, child) {
      return Container(
        // ignore: prefer_interpolation_to_compose_strings
        child: Center(
            child: Column(
          children: [
            // Text for payment
            Text(
              'Choose your Payment Means',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Items Purchased Cost: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '${value.calculateTotal()} ',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Tax Charged :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'UGX 1.2',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            // qr image with total
            PrettyQr(
              roundEdges: true,
              data: "${value.calculateTotal()}",
              size: 50,
              elementColor: Colors.blueAccent,
            ),
            // more data on how to pay
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Pay With Airtel UG'),
            ),
          ],
        )),
      );
    });
  }
}
