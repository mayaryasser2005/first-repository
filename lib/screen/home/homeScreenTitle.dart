import 'package:flutter/material.dart';

class HomeScreenTitle extends StatelessWidget {
  late String text;

  HomeScreenTitle(this.text);

  Widget build(BuildContext context) {
    return Expanded(
        flex: 50,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 18),
          color: Color(0xffc600fd),
          child: Text(text,
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center),
        ));
  }
}
