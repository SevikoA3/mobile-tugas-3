import 'package:flutter/material.dart';
import '../controllers/time_converter_controller.dart';

class TimeConverterView extends StatelessWidget {
  final TimeConverterController controller = TimeConverterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Time Converter'), leading: BackButton()),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButton<String>(
              value: controller.fromUnit,
              items: controller.units.map((u) => DropdownMenuItem(value: u, child: Text(u))).toList(),
              onChanged: (v) { controller.fromUnit = v!; },
            ),
            TextField(
              controller: controller.inputController,
              decoration: InputDecoration(hintText: 'Enter value to convert'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: () { controller.convert(); }, child: Text('Convert')),
            SizedBox(height: 16),
            Text(controller.result),
          ],
        ),
      ),
    );
  }
}