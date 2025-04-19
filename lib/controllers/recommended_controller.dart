import '../models/site.dart';

class RecommendedController {
  List<RecommendedSite> getSites() {
    return [
      RecommendedSite(title: 'TechCrunch', subtitle: 'Latest tech news', imageUrl: 'https://i.ytimg.com/vi/rQE5MptQO-g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLOyxcpWzyV0xXwpbwH27x3LOpnQ', url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'),
      RecommendedSite(title: 'BBC News', subtitle: 'Global news updates', imageUrl: 'https://i.ytimg.com/vi/rQE5MptQO-g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLOyxcpWzyV0xXwpbwH27x3LOpnQ', url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'),
      RecommendedSite(title: 'Medium', subtitle: 'Stories and ideas', imageUrl: 'https://i.ytimg.com/vi/rQE5MptQO-g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLOyxcpWzyV0xXwpbwH27x3LOpnQ', url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'),
      RecommendedSite(title: 'Spotify', subtitle: 'Stream music online', imageUrl: 'https://i.ytimg.com/vi/rQE5MptQO-g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLOyxcpWzyV0xXwpbwH27x3LOpnQ', url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'),
      RecommendedSite(title: 'GitHub', subtitle: 'Collaborate on projects', imageUrl: 'https://i.ytimg.com/vi/rQE5MptQO-g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLOyxcpWzyV0xXwpbwH27x3LOpnQ', url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'),
    ];
  }
}