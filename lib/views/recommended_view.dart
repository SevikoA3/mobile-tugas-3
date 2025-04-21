import 'package:flutter/material.dart';
import 'package:mobile_task3/models/site.dart';
import '../controllers/recommended_controller.dart';

class RecommendedView extends StatefulWidget {
  @override
  State<RecommendedView> createState() => _RecommendedViewState();
}

class _RecommendedViewState extends State<RecommendedView> {
  final RecommendedController controller = RecommendedController();
  late final List<RecommendedSite> sites;

  @override
  void initState() {
    super.initState();
    sites = controller.getSites();
  }

  @override
  Widget build(BuildContext context) {
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
                leading: Image.asset(
                  s.imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  s.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(s.subtitle),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        controller.launchSite(s.url);
                      },
                      child: Text('Visit'),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          s.isFavorite = !s.isFavorite;
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: s.isFavorite ? Colors.red : null,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
