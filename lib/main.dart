import 'package:flutter/material.dart';
import 'package:session_22/screen/calculator/calculator.dart';
import 'package:session_22/screen/home/home_screen.dart';
import 'package:session_22/screen/login/login.dart';
import 'package:session_22/screen/regester/register.dart';

Color purple = Color(0xffc600fd);
TextStyle defulttextstyle = TextStyle(fontSize: 20, color: Colors.white);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (_) {
          return HomeScreen();
        },
        LoginScreen.routeName: (_) => LoginScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        Calculator.routeName: (_) => Calculator()
      },
      initialRoute: Calculator.routeName,
    );
  }
}
