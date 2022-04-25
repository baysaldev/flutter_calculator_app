// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class ButonBuild extends StatelessWidget {
  const ButonBuild({Key? key}) : super(key: key);

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
            "AC",
            style: TextStyle(fontSize: 24),
          ),
          onPressed: () => {},
          color: Colors.grey,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
