import 'package:flutter/material.dart';
import '../controllers/tracker_controller.dart';

class TrackerView extends StatelessWidget {
  final TrackerController controller = TrackerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Live Location Tracker')),
      body: Center(
        child: Container(
          color: Colors.grey[300],
          width: double.infinity,
          height: 400,
          child: Center(child: Text('Map Placeholder')),
        ),
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
