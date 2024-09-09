import 'package:flutter/material.dart';
import 'package:online_grocey_app/Themes/theme.dart';
import 'package:online_grocey_app/models/cart_model.dart';
// import 'package:online_grocey_app/models/theme_model.dart';
import 'package:online_grocey_app/utils/intro.dart';
import 'package:provider/provider.dart';
// import 'package:online_grocey_app/utils/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Online Gorcey App',
        theme: lightMode,
        // darkTheme: darkMode,
        home: const IntroScreen());
  }
}
