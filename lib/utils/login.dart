import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_grocey_app/components/button_tile.dart';
import 'package:online_grocey_app/components/image_button.dart';
import 'package:online_grocey_app/components/text_field.dart';
// import 'package:online_grocey_app/utils/intro.dart';

class LoginWindow extends StatefulWidget {
  void Function()? onTap;

   LoginWindow({super.key,required this.onTap});

  @override
  State<LoginWindow> createState() => _LoginWindowState();
}

class _LoginWindowState extends State<LoginWindow> {
  final emailController = TextEditingController();

  final paswordController = TextEditingController();

  void signUp() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.toString(),
      password: paswordController.text.toString(),
    );
  }

// Wrong Email entered
  void showError(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shadowColor: Colors.blueAccent,
          title: Center(
            child: Text(message),
          ),
        );
      },
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                //logo
                // const Icon(
                //   Icons.lock,
                //   size: 100,
                // ),
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
                    fontSize: 16,
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
                  text: 'LogIn',
                  onTap: signUp,
                ),
                const SizedBox(height: 25.0),
                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[500],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or Continue With',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                //google + apple sign in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SquareTile(
                          imagePath: 'lib/images/go log.png', onTap: () => {}),
                    ),
                    const SizedBox(height: 50),
                    SquareTile(
                        imagePath: 'lib/images/apple.png', onTap: () => {}),
                  ],
                ),
                const SizedBox(height: 10),
                // not a member? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ()=>AuthService().signInWithGoogle(),
