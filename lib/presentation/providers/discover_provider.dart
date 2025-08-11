import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';
import 'package:tok_tik/domain/repositories/video_post_repository.dart';



class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videoPostRepository;

  DiscoverProvider({required this.videoPostRepository});

  bool initialLoading = true;
  List<VideoPost> videos = [];  


  Future<void> loadNextPage() async {

    final newVideos = await videoPostRepository.getTrendingVideos(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}