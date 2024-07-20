import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String diget;
  final Function onClick;

  CalculatorButton({required this.diget, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.all(5),
            child: ElevatedButton(
              onPressed: () {
                onClick(diget);
              },
              child: Text(
                diget,
                style: TextStyle(fontSize: 30),
              ),
            )));
  }
}
