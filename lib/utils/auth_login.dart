import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_grocey_app/components/button_tile.dart';
// import 'package:online_grocey_app/components/image_button.dart';
import 'package:online_grocey_app/components/text_field.dart';

class LoginAuth extends StatefulWidget {
  const LoginAuth({super.key});

  @override
  State<LoginAuth> createState() => _LoginAuthState();
}

class _LoginAuthState extends State<LoginAuth> {
  final emailController = TextEditingController();

  final paswordController = TextEditingController();

  void signUp() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.toString(),
      password: paswordController.text.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'lib/images/8.png',
                width: 150,
                height: 120,
              ),
              const SizedBox(height: 50),
              //Welcome back, you`ve been missed
              Text(
                'Welcome Back, Shop with Us',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 25),
              //username textfield
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 25.0,
              ),
              //password textfield
              MyTextField(
                controller: paswordController,
                hintText: 'Password',
                obscureText: true,
              ),
              //forgot paasword ?
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              //sign in button
              MyButtonSN(
                onTap: () async {
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: emailController.text.toString(),
                    password: paswordController.text.toString(),
                  );
                },
                text: 'LogIn',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
