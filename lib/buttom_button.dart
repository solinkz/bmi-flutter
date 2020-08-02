import 'package:flutter/material.dart';
import 'constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.title, @required this.onTap});

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        color: bottomContainerColor,
        height: bottomContainerheight,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPress});
  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPress,
        shape: CircleBorder(),
        fillColor: Color(0xFF90AAB6),
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        elevation: 0,
        child: Icon(icon));
  }
}
