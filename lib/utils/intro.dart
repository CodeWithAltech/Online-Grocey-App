import 'package:flutter/material.dart';
import 'package:online_grocey_app/components/button_tile.dart';
import 'package:online_grocey_app/services/auth.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // big logo
              Padding(
                padding: const EdgeInsets.only(
                  left: 100.0,
                  right: 100.0,
                  top: 80,
                  bottom: 10,
                ),
                child: Image.asset('lib/images/1.png'),
              ),
          
              // we deliver groceries at your doorstep
              const Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'We deliver groceries at your DoorStep',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          
              // groceree gives you fresh vegetables and fruits
              Text(
                'Fresh items everyday',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
          
              const SizedBox(height: 24),
              // get started button
              MyButtonSN(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => AuthDiv()
                    ),
                  );
                },
                text: 'Get Started With Us',
              ),
          
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
