import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';
import 'package:tok_tik/presentation/widgets/shared/video_buttons.dart';
import 'package:tok_tik/presentation/widgets/video/fullscreen_player.dart';


class VideoScrollableViews extends StatelessWidget {

  final List<VideoPost> videos;
  const VideoScrollableViews({
    super.key, required this.videos
  });

  @override
  Widget build(BuildContext context) {
   return PageView.builder(
    scrollDirection: Axis.vertical,
    physics: const BouncingScrollPhysics(),
    itemCount: videos.length,
    itemBuilder: (context, index) {
      final VideoPost videoPost = videos[index];
      return Stack(
     children: [
      SizedBox.expand(
        child: FullscreenPlayer(caption: videoPost.caption, videoUrl: videoPost.thumbnailUrl),
      ),
      Positioned(
        bottom: 100,
        right: 20,
        child: VideoButtons(videoPost: videoPost),
      )

     ]
      );
    },
   );

  }
}