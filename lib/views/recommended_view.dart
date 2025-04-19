import 'package:flutter/material.dart';
import '../controllers/recommended_controller.dart';

class RecommendedView extends StatelessWidget {
  final RecommendedController controller = RecommendedController();

  @override
  Widget build(BuildContext context) {
    final sites = controller.getSites();
    return Scaffold(
      appBar: AppBar(title: Text('Recommended Sites')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: sites.length,
          itemBuilder: (_, i) {
            final s = sites[i];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Image.network(s.imageUrl),
                title: Text(s.title, style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(s.subtitle),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(onPressed: () {/* launch URL */}, child: Text('Visit')),
                    IconButton(onPressed: () {/* favorite */}, icon: Icon(Icons.favorite_border)),
                  ],
                ),
              ),
            );
          },
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
