import 'package:flutter/material.dart';

import 'CalculatorButton.dart';

//test commit
class Calculator extends StatefulWidget {
  static const routeName = "calculator";

  Calculator({super.key});

  @override
  State createState() {
    return CalculatorState();
  }
}

class CalculatorState extends State {
  String result = "";
  String savedOperator = '';
  String lhs = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    result,
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 32, color: Colors.black),
                  ),
                ],
              )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(diget: "7", onClick: onDigetClick),
                CalculatorButton(diget: "8", onClick: onDigetClick),
                CalculatorButton(diget: "9", onClick: onDigetClick),
                CalculatorButton(diget: "+", onClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(diget: "4", onClick: onDigetClick),
                CalculatorButton(diget: "5", onClick: onDigetClick),
                CalculatorButton(diget: "6", onClick: onDigetClick),
                CalculatorButton(diget: "/", onClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(diget: "1", onClick: onDigetClick),
                CalculatorButton(diget: "2", onClick: onDigetClick),
                CalculatorButton(diget: "3", onClick: onDigetClick),
                CalculatorButton(diget: "+", onClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(diget: ".", onClick: onDigetClick),
                CalculatorButton(diget: "0", onClick: onDigetClick),
                CalculatorButton(diget: "=", onClick: onEqual),
                CalculatorButton(diget: "x", onClick: onOperatorClick),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onDigetClick(String diget) {
    result += diget;
    setState(() {});
  }

  void onOperatorClick(String clickOperator) {
    if (savedOperator.isEmpty) {
      lhs = result;
    } else {
      lhs = calculate(lhs, savedOperator, result);
    }
    savedOperator = clickOperator;
    result = '';
    setState(() {});
    print("lhs:$lhs,savedOperator:$savedOperator");
  }

  void onEqual(_) {
    result = calculate(lhs, savedOperator, result);
    lhs = '';
    savedOperator = '';
    setState(() {});
  }

  String calculate(String lhs, String Operator, String rhs) {
    int n1 = int.parse(lhs);
    int n2 = int.parse(rhs);
    switch (Operator) {
      case "+":
        return (n1 + n2).toString();
      case "-":
        return (n1 - n2).toString();
      case "*":
        return (n1 * n2).toString();
      default:
        return (n1 / n2).toString();
    }
  }
}

// Widget build(BuildContext context) {
//   print("print method");
//   return Scaffold(
//     appBar: AppBar(
//       title: Text("Calulator"),
//     ),
//     body: Center(
//       child: ElevatedButton(onPressed: (){
//         counter++;
//         setState(() {});
//         print("counter :$counter");
//
//       } ,child: Text("$counter"),),
//     ),
//   );
// }
