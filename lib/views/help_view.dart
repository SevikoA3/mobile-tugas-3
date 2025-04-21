import 'package:flutter/material.dart';
import '../controllers/help_controller.dart';

class HelpView extends StatelessWidget {
  final HelpController controller = HelpController();

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
              'Bantuan',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Cara menggunakan aplikasi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ...[
                  'Ininya di iniin',
                  'Itunya di ituin',
                  'Yang ini dibeginikan',
                  'Yang itu dibegitukan',
                  'Yes',
                ]
                .map(
                  (s) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Text('• $s'),
                  ),
                )
                .toList(),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () async {
                  var tempContext = Navigator.of(context);
                  await controller.deleteSession();
                  tempContext.pushReplacementNamed('/login');
                },
                icon: Icon(Icons.logout),
                label: Text('Logout'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Anggota'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Bantuan & logout',
          ),
        ],
        onTap: (i) {
          if (i == 0) Navigator.pushNamed(context, '/home');
          if (i == 1) Navigator.pushNamed(context, '/members');
        },
      ),
    );
  }
}
