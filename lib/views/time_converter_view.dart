import 'package:flutter/material.dart';

class TimeConverterView extends StatefulWidget {
  @override
  _TimeConverterViewState createState() => _TimeConverterViewState();
}

class _TimeConverterViewState extends State<TimeConverterView> {
  final TextEditingController inputController = TextEditingController();
  String selectedUnit = 'Seconds';

  double seconds = 0;
  double minutes = 0;
  double hours = 0;
  double days = 0;
  double weeks = 0;
  double months = 0;
  double years = 0;

  final List<String> units = [
    'Seconds',
    'Minutes',
    'Hours',
    'Days',
    'Weeks',
    'Months',
    'Years',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Time Converter'), leading: BackButton()),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedUnit,
              onChanged: (String? newValue) {
                setState(() {
                  selectedUnit = newValue!;
                });
              },
              items:
                  units.map((String unit) {
                    return DropdownMenuItem<String>(
                      value: unit,
                      child: Text(unit),
                    );
                  }).toList(),
            ),
            TextField(
              controller: inputController,
              decoration: InputDecoration(hintText: 'Enter value to convert'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: convert, child: Text('Convert')),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Seconds: ${seconds.toStringAsFixed(2)}'),
                Text('Minutes: ${minutes.toStringAsFixed(2)}'),
                Text('Hours: ${hours.toStringAsFixed(2)}'),
                Text('Days: ${days.toStringAsFixed(2)}'),
                Text('Weeks: ${weeks.toStringAsFixed(2)}'),
                Text('Months: ${months.toStringAsFixed(2)}'),
                Text('Years: ${years.toStringAsFixed(2)}'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void convert() {
    final double? inputValue = double.tryParse(inputController.text);
    if (inputValue == null) return;

    double valueInSeconds;
    switch (selectedUnit) {
      case 'Seconds':
        valueInSeconds = inputValue;
        break;
      case 'Minutes':
        valueInSeconds = inputValue * 60;
        break;
      case 'Hours':
        valueInSeconds = inputValue * 3600;
        break;
      case 'Days':
        valueInSeconds = inputValue * 86400;
        break;
      case 'Weeks':
        valueInSeconds = inputValue * 604800;
        break;
      case 'Months':
        valueInSeconds = inputValue * 2629746; // Average month in seconds
        break;
      case 'Years':
        valueInSeconds = inputValue * 31556952; // Average year in seconds
        break;
      default:
        valueInSeconds = inputValue;
    }

    setState(() {
      seconds = valueInSeconds;
      minutes = valueInSeconds / 60;
      hours = valueInSeconds / 3600;
      days = valueInSeconds / 86400;
      weeks = valueInSeconds / 604800;
      months = valueInSeconds / 2629746;
      years = valueInSeconds / 31556952;
    });
  }
}
