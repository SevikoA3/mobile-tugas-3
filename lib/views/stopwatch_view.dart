import 'package:flutter/material.dart';
import '../controllers/stopwatch_controller.dart';

class StopwatchView extends StatelessWidget {
  final StopwatchController controller = StopwatchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stopwatch')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ValueListenableBuilder<Duration>(
              valueListenable: controller.time,
              builder: (_, duration, __) {
                String twoDigits(int n) => n.toString().padLeft(2, '0');
                final h = twoDigits(duration.inHours);
                final m = twoDigits(duration.inMinutes.remainder(60));
                final s = twoDigits(duration.inSeconds.remainder(60));
                return Text(
                  '$h:$m:$s',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                );
              },
            ),
            SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: controller.start,
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: controller.stop,
                  child: Text(
                    'Stop',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: controller.reset,
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
