import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeController controller = HomeController();

  String username = '';

  @override
  void initState() {
    _getUsername();
    super.initState();
  }

  Future<void> _getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('userId') ?? 'User';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 32),

            Text(
              'Halo, $username',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),

            Text(
              'Home',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _menuButton(context, 'Stopwatch', '/stopwatch', Icons.timer),
            _menuButton(
              context,
              'Jenis Bilangan',
              '/bilangan',
              Icons.format_list_numbered,
            ),
            _menuButton(context, 'Tracking LBS', '/tracker', Icons.map),
            _menuButton(
              context,
              'Konversi waktu',
              '/converter',
              Icons.access_time,
            ),
            _menuButton(
              context,
              'Situs rekomendasi',
              '/recommended',
              Icons.link,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Anggota'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Bantuan & logout',
          ),
        ],
        onTap: (i) {
          if (i == 1) Navigator.pushNamed(context, '/members');
          if (i == 2) Navigator.pushNamed(context, '/help');
        },
      ),
    );
  }

  Widget _menuButton(
    BuildContext ctx,
    String title,
    String route,
    IconData icon,
  ) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton.icon(
        onPressed: () => Navigator.pushNamed(ctx, route),
        icon: Icon(icon),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
}
