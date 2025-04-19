import 'package:flutter/material.dart';
import '../controllers/members_controller.dart';

class MembersView extends StatelessWidget {
  final MembersController controller = MembersController();

  @override
  Widget build(BuildContext context) {
    final members = controller.getMembers();
    return Scaffold(
      appBar: AppBar(title: Text('Group Members'), leading: BackButton()),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search members...'),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: members.length,
                itemBuilder: (_, i) {
                  final m = members[i];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Image.network(m.imageUrl),
                      title: Text(m.name, style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text(m.role), Text(m.team)],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}