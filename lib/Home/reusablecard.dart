import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  Reusable({@required this.color,this.cardChild,this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child : Container(
        child: cardChild,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          boxShadow:[
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 2, //spread radius
              blurRadius: 7, // blur radius
              offset: Offset(0, 2),
            ),
          ],

          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}