import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'file:///C:/Users/Admin/AndroidStudioProjects/bmi_calculator/lib/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum weight_class { under, normal, over }

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String resultText;
  ResultsPage({this.bmi, this.resultText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kbigLabelStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reUsableCard(
              colour: activeCardColour,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    bmi,
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  bottomButton(
                      buttonLabel: 'RE-CALCULATE',
                      onTap: () {
                        Navigator.pop(context);
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
//0xFF24D876
