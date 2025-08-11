import 'package:flutter/material.dart';
import 'package:tok_tik/presentation/widgets/video/gradient_video.dart';
import 'package:video_player/video_player.dart';

class FullscreenPlayer extends StatefulWidget {

  final String videoUrl;
  final String caption;
  const FullscreenPlayer({
    super.key,
    required this.videoUrl,
    required this.caption
  });

  @override
  State<FullscreenPlayer> createState() => _FullscreenPlayerState();
}

class _FullscreenPlayerState extends State<FullscreenPlayer> {

  late VideoPlayerController controller;
  
  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.asset(widget.videoUrl)
      ..setVolume(0)
      ..setLooping(true)
      ..play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        if (controller.value.isPlaying) {
          controller.pause();
        } else {
          controller.play();
        }
      },
      onLongPress: () {
        if (controller.value.isPlaying) {
          controller.pause();
        }
      },
      onLongPressEnd: (details) {
        controller.play();
      },
      child: FutureBuilder<void>(
        future: controller.initialize(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: Stack(
                children: [
                  VideoPlayer(controller),
                  GradientVideo(
                    gradientStops: [0.7, 1.0],
                  ),
                  Positioned(
                    bottom: 50,
                    left: 20,
                    child: VideoCaption(caption: widget.caption)
                  ),
                ],
              )
            );
          } else {
            return Center(child: CircularProgressIndicator(strokeWidth: 5, color: Colors.white)) ;
          }
        },
      ),
    );
  }
}


class VideoCaption extends StatelessWidget {
  final String caption;

  const VideoCaption({super.key, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Text(
        caption,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
