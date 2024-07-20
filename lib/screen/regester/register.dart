import 'package:flutter/material.dart';
import 'package:session_22/screen/home/home_screen.dart';
import 'package:session_22/screen/login/login.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "Register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text(HomeScreen.routeName)),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(LoginScreen.routeName))
        ],
      ),
    );
  }
}
