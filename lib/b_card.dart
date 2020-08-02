import 'package:flutter/material.dart';

class BCard extends StatelessWidget {
  BCard({@required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(8),
        ),
        child: cardChild,
      ),
    );
  }
}
