import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  Color purple = Color(0xffc600fd);
  TextStyle defulttextstyle = TextStyle(fontSize: 20, color: Colors.white);
  late String imagepath;
  late String text;

  HomeTile({required this.imagepath, required this.text});

  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset(imagepath),
        Container(
          color: purple,
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
