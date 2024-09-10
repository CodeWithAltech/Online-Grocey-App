import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_grocey_app/Pages/home.dart';

class HomeTest extends StatelessWidget {
  HomeTest({super.key});
  final User = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.logout_outlined),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 100.0,
                right: 100.0,
                top: 80,
                bottom: 10,
              ),
              child: Image.asset('lib/images/2.png'),
            ),

            // we deliver groceries at your doorstep
            const Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Hello Our \nFavorite Customer ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // groceree gives you fresh vegetables and fruits
            Text(
              'Logged in Successfully\n' + User.email!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            ProcedBtn()
          ],
        ),
      ),
    );
  }
}

class ProcedBtn extends StatelessWidget {
  const ProcedBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue,
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Happy Shopping!!',
                  style: TextStyle(color: Colors.blue[200]),
                ),

                const SizedBox(height: 8),
                // total price
                Text(
                  'Lets Start',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            // pay now
            GestureDetector(
              // ignore: sort_child_properties_last
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade200),
                  borderRadius: BorderRadius.circular(28),
                ),
                padding: const EdgeInsets.all(12),
                child: const Row(
                  children: const [
                    Text(
                      'Shop Now',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (BuildContext) => HomePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
