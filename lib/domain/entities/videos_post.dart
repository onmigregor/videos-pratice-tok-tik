class VideoPost {

  final String caption;
  final String thumbnailUrl; // Assuming this is the correct field for the video URL
  final int likes;
  final int views;

  VideoPost({
    required this.caption,
    required this.thumbnailUrl,
    this.likes = 0,
    this.views = 0
  });

}