import 'package:url_launcher/url_launcher.dart';
import '../models/site.dart';

class RecommendedController {
  List<RecommendedSite> getSites() {
    return [
      RecommendedSite(
        title: 'TechCrunch',
        subtitle: 'Latest tech news',
        imageUrl: 'assets/tc.jpeg',
        url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      ),
      RecommendedSite(
        title: 'BBC News',
        subtitle: 'Global news updates',
        imageUrl: 'assets/bbc.png',
        url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      ),
      RecommendedSite(
        title: 'Medium',
        subtitle: 'Stories and ideas',
        imageUrl: 'assets/medium.png',
        url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      ),
      RecommendedSite(
        title: 'Spotify',
        subtitle: 'Stream music online',
        imageUrl: 'assets/spotify.png',
        url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      ),
      RecommendedSite(
        title: 'GitHub',
        subtitle: 'Collaborate on projects',
        imageUrl: 'assets/github.png',
        url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      ),
    ];
  }

  Future<void> launchSite(String url) async {
    await launchUrl(Uri.parse(url));
  }
}
