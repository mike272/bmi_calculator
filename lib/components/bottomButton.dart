import 'package:flutter/material.dart';
import '../constants.dart';

class bottomButton extends StatelessWidget {
  bottomButton({this.onTap, this.buttonLabel});
  final Function onTap;
  final String buttonLabel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonLabel,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 0),
        color: bottomContainerColour,
        height: bottomContHeight,
        width: double.infinity,
      ),
    );
  }
}
