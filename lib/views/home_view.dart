import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _menuButton(context, 'Stopwatch', '/stopwatch', Icons.timer),
            _menuButton(context, 'Jenis Bilangan', '/members', Icons.format_list_numbered),
            _menuButton(context, 'Tracking LBS', '/tracker', Icons.map),
            _menuButton(context, 'Konversi waktu', '/converter', Icons.access_time),
            _menuButton(context, 'Situs rekomendasi', '/recommended', Icons.link),
          ],
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
          if (i == 1) Navigator.pushNamed(context, '/members');
          if (i == 2) Navigator.pushNamed(context, '/help');
        },
      ),
    );
  }

  Widget _menuButton(BuildContext ctx, String title, String route, IconData icon) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton.icon(
        onPressed: () => Navigator.pushNamed(ctx, route),
        icon: Icon(icon),
        label: Text(title),
        style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 16)),
      ),
    );
  }
}
