import 'package:flutter/material.dart';

import 'constent.dart';

class IcontContent extends StatelessWidget {
  final String nameText;
  final IconData customIcon;

  IcontContent({this.nameText, this.customIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          customIcon,
          size: 80,
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          nameText,
          style: KlabelTextStyle,
        )
      ],
    );
  }
}
