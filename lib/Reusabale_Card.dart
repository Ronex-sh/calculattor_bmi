import 'package:flutter/material.dart';

class ReusabaleCard extends StatelessWidget {
//  const resubaleCard({
//    Key key,
//  }) : super(key: key);
  final Color color;
  final Widget cardChild;
  final Function ontapes;
  ReusabaleCard({@required this.color, this.cardChild, this.ontapes});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapes,
      child: Container(
        width: double.infinity,
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        margin: EdgeInsets.all(11),
      ),
    );
  }
}
