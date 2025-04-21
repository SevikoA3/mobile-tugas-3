class RecommendedSite {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String url;
  bool isFavorite;
  RecommendedSite({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.url,
    this.isFavorite = false,
  });
}
