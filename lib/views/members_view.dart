import 'package:flutter/material.dart';
import 'package:mobile_task3/models/member.dart';
import '../controllers/members_controller.dart';

class MembersView extends StatelessWidget {
  final MembersController controller = MembersController();

  @override
  Widget build(BuildContext context) {
    final List<Member> members = [
      Member(
        name: 'Carstenz Meru Phantara',
        role: '123220080',
        team: '',
        imageUrl: 'assets/karten.jpeg',
      ),
      Member(
        name: 'Fitra Ramadhan S',
        role: '123220127',
        team: '',
        imageUrl: 'assets/fitraa.jpg',
      ),
      Member(
        name: 'Seviko Attalarik P.H',
        role: '123220151',
        team: '',
        imageUrl: 'assets/seviko.jpeg',
      ),
      Member(
        name: 'Aurelia Syifaraya',
        role: '123220192',
        team: '',
        imageUrl: 'assets/aurel.jpg',
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            Text(
              'Members',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Column(
              children:
                  members.map((m) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            m.imageUrl,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                m.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(m.role),
                              Text(m.team),
                            ],
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
          if (i == 2) Navigator.pushNamed(context, '/help');
        },
      ),
    );
  }
}
