import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "Home");
                },
                child: Text("Home Screen")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "Register");
                },
                child: Text("Register Screen"))
          ],
        ),
      ),
    );
  }
}
