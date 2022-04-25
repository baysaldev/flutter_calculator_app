// ignore_for_file: sized_box_for_whitespace, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

//BURDA BUTON TUŞ AYARLARIMIZ YAPTIK ANA SAYFADA KULLANMAK İÇİN
class CalculatorButton extends StatelessWidget {
  final String text;
  final int? fiilColor;
  final int? textColor;
  final double? textSize;
  final Function? callback;

  const CalculatorButton(
      {required this.text,
      this.fiilColor,
      this.textColor,
      this.textSize,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: textSize),
          ),
          onPressed: () => callback!(text),
          color: Color(fiilColor!),
          textColor: Color(textColor!),
        ),
      ),
    );
  }
}
