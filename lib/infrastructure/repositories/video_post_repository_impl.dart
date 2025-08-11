import 'package:tok_tik/domain/datasources/video_post_datasource.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';
import 'package:tok_tik/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videoPostDataSource;

  VideoPostRepositoryImpl({required this.videoPostDataSource});

  @override
  Future<List<VideoPost>> getTrendingVideos(int page) {
    return videoPostDataSource.getTrendingVideos(page);
  }

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    return videoPostDataSource.getFavoriteVideosByUser(userId);
  }
}
