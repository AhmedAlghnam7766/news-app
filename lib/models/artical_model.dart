class ArticalModel {
  final String url;
  final String image;
  final String title;
  final String subTitle;

  ArticalModel({
    required this.url,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  // factory to take json data
  factory ArticalModel.fromJson(Map<String, dynamic> json) {
    return ArticalModel(
      url: json['url'] ?? '',
      image:
          json['urlToImage'] ??
          'https://static.vecteezy.com/system/resources/thumbnails/004/141/669/small_2x/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg',
      title: json['title'] ?? 'No title',
      subTitle: json['description'] ?? 'No description',
    );
  }
}
