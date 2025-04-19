import 'package:flutter/material.dart';
import '../controllers/stopwatch_controller.dart';

class StopwatchView extends StatelessWidget {
  final StopwatchController controller = StopwatchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stopwatch')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder<Duration>(
            valueListenable: controller.time,
            builder: (_, duration, __) {
              String twoDigits(int n) => n.toString().padLeft(2, '0');
              final h = twoDigits(duration.inHours);
              final m = twoDigits(duration.inMinutes.remainder(60));
              final s = twoDigits(duration.inSeconds.remainder(60));
              return Text('$h:$m:$s', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold));
            },
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: controller.start, child: Text('Start')),
              SizedBox(width: 16),
              ElevatedButton(onPressed: controller.stop, child: Text('Stop')),
              SizedBox(width: 16),
              ElevatedButton(onPressed: controller.reset, child: Text('Reset')),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Anggota'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Bantuan & logout'),
        ],
        onTap: (i) {
          if (i == 0) Navigator.pushNamed(context, '/home');
          if (i == 1) Navigator.pushNamed(context, '/members');
          if (i == 2) Navigator.pushNamed(context, '/help');
        },
      ),
    );
  }
}