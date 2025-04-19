import 'package:flutter/material.dart';

class TimeConverterController {
  final units = ['Seconds', 'Minutes', 'Hours'];
  String fromUnit = 'Seconds';
  final TextEditingController inputController = TextEditingController();
  String result = '';

  void convert() {
    double value = double.tryParse(inputController.text) ?? 0;
    double seconds;
    switch (fromUnit) {
      case 'Minutes':
        seconds = value * 60;
        break;
      case 'Hours':
        seconds = value * 3600;
        break;
      default:
        seconds = value;
    }
    result = "Result: $seconds seconds";
  }
}