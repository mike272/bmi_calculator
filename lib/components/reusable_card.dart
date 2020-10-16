import 'package:flutter/material.dart';

class reUsableCard extends StatelessWidget {
  final Color colour;
  final Widget childWidget;
  final Function onPress;
  reUsableCard({@required this.colour, this.childWidget, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childWidget,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
