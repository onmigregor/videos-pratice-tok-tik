import 'package:tok_tik/domain/datasources/video_post_datasource.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/local_video_post.dart';

class LocalVideoDataSourceImpl implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideos(int page) async {
    await Future.delayed(Duration(seconds: 2));

     // Example: assuming you have a list of maps called localVideosJson
    final List<VideoPost> newVideos = videoPosts.map(
        (video) => LocalVideoModel.fromJson(video).toMessageEntity()
      ).toList(); 

      return newVideos;
  }
}
