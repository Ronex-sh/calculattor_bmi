import 'package:flutter/material.dart';

import 'constent.dart';

class ButtomEne extends StatelessWidget {
  final Function onTap;
  final String buttomTitle;
  ButtomEne({this.onTap, this.buttomTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttomTitle,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        color: Colors.red,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: KbouttmCountenerHight,
        padding: EdgeInsets.only(bottom: 12),
      ),
    );
  }
}
