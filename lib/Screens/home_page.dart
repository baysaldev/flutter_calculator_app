// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculator_app/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? firstNum;
  int? secondNum;
  String? history = "";
  String? textToDisplay = "";
  String? res;
  String? operation;

  btnOnClick(String btnVal) {
    print(btnVal);

    if (btnVal == "C") {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "";
    } else if (btnVal == "AC") {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "";
      history = "";
    } else if (btnVal == "%") {
      res = (firstNum! / 10).toString();
    } else if (btnVal == ".") {
      if (textToDisplay!.contains(".")) {
        print("Already contains a decimal");
        return;
      } else {
        textToDisplay = textToDisplay! + btnVal;
      }
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "X" ||
        btnVal == "/") {
      firstNum = int.tryParse(textToDisplay!);
      res = "";
      operation = btnVal;
    } else if (btnVal == "=") {
      secondNum = int.tryParse(textToDisplay!);
      if (operation == "+") {
        res = (firstNum! + secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "-") {
        res = (firstNum! - secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "X") {
        res = (firstNum! * secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "/") {
        res = (firstNum! / secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.tryParse(textToDisplay! + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                history!,
                style: TextStyle(fontSize: 30, color: Colors.white54),
              ),
            ),
            alignment: Alignment(1.0, 1.0),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                textToDisplay!,
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
            alignment: Alignment(1.0, 1.0),
          ),

          //1.KISIM
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "AC",
                textSize: 24,
                textColor: 0xFF000000,
                fiilColor: 0xFFBDBDBD,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: "C",
                textSize: 24,
                textColor: 0xFF000000,
                fiilColor: 0xFFBDBDBD,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: "%",
                textSize: 24,
                textColor: 0xFF000000,
                fiilColor: 0xFFBDBDBD,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: "/",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0XFFFF9800,
                callback: btnOnClick,
              ),
            ],
          ),
          // 2. KISIM
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "7",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0xFF303030,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: "8",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0xFF303030,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: "9",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0xFF303030,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: "X",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0XFFFF9800,
                callback: btnOnClick,
              ),
            ],
          ),

          //3. KISIM
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "4",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0xFF303030,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: "5",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0xFF303030,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: "6",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0xFF303030,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: "-",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0XFFFF9800,
                callback: btnOnClick,
              ),
            ],
          ),
          //4. KISIM
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            CalculatorButton(
              text: "1",
              textSize: 24,
              textColor: 0xFFFFFFFF,
              fiilColor: 0xFF303030,
              callback: btnOnClick,
            ),
            CalculatorButton(
              text: "2",
              textSize: 24,
              textColor: 0xFFFFFFFF,
              fiilColor: 0xFF303030,
              callback: btnOnClick,
            ),
            CalculatorButton(
              text: "3",
              textSize: 24,
              textColor: 0xFFFFFFFF,
              fiilColor: 0xFF303030,
              callback: btnOnClick,
            ),
            CalculatorButton(
              text: "+",
              textSize: 24,
              textColor: 0xFFFFFFFF,
              fiilColor: 0XFFFF9800,
              callback: btnOnClick,
            ),
          ]),
          //5. KISIM
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "0",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0xFF303030,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: "00",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0xFF303030,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: ".",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0xFF303030,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: "=",
                textSize: 24,
                textColor: 0xFFFFFFFF,
                fiilColor: 0XFFFF9800,
                callback: btnOnClick,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
