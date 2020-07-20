import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onpressed});
  final IconData icon;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      onPressed: onpressed,
      shape: CircleBorder(),
      backgroundColor: Color(0xff4c4f5e),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
