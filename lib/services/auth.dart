import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_grocey_app/Pages/hom.dart';
import 'package:online_grocey_app/Pages/home.dart';
import 'package:online_grocey_app/utils/auth_login.dart';
import 'package:online_grocey_app/utils/login.dart';

class AuthDiv extends StatelessWidget {
  const AuthDiv({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomeTest();
        } else {
          return LoginAuth();
        }
      },
    );
  }
}
