import 'package:tok_tik/domain/entities/videos_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
      name: json['name']?? 'no name',
      videoUrl: json['videoUrl'],
      likes: json['likes'] ?? 0,
      views: json['views'] ?? 0,
    );
  }

  VideoPost toMessageEntity() => VideoPost(
    caption: name, // Assuming videoUrl is unique for each video
    thumbnailUrl: videoUrl, // Change this to match the correct named parameter in VideosPost
    likes: likes,
    views: views,
  );  
}