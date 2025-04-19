import 'package:flutter/material.dart';
import '../controllers/help_controller.dart';

class HelpView extends StatelessWidget {
  final HelpController controller = HelpController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Help & Logout'), leading: BackButton()),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cara menggunakan aplikasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ...['Ininya di iniin', 'Itunya di ituin', 'Yang ini dibeginikan', 'Yang itu dibegitukan', 'Yes']
                .map((s) => Padding(padding: EdgeInsets.symmetric(vertical: 4), child: Text('• $s')))
                .toList(),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
                icon: Icon(Icons.logout),
                label: Text('Logout'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 16)),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Anggota'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Bantuan & logout'),
        ],
        onTap: (i) {
          if (i == 0) Navigator.pushNamed(context, '/home');
          if (i == 1) Navigator.pushNamed(context, '/members');
        },
      ),
    );
  }
}