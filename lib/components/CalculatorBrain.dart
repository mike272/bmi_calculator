import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'dart:math';

class calc {
  final int h;
  final int w;
  final int a;
  double _bmi;
  calc(this.a, this.w, this.h);
  String calculateBMI() {
    _bmi = w / pow(h / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else
      return "underweight";
  }
}
