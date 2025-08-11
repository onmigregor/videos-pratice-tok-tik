import 'package:tok_tik/domain/entities/videos_post.dart';

abstract class VideoPostDataSource {

  Future<List<VideoPost>> getTrendingVideos(int page);
  
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId);
}
