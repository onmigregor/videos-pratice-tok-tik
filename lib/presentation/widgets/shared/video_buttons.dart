import 'package:animate_do/animate_do.dart';
import  'package:flutter/material.dart';
import 'package:tok_tik/config/helpers/humman_formats.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';


class VideoButtons extends StatelessWidget {
  final VideoPost videoPost;
  const VideoButtons({
    super.key,
    required this.videoPost
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: videoPost.likes, icon: Icons.favorite, color: Colors.red, onPressed: () {
          // Handle like button press
        }),
        const SizedBox(height: 30),
        _CustomIconButton(value: videoPost.views, icon: Icons.remove_red_eye, onPressed: () {
          // Handle comment button press
        }),
        const SizedBox(height: 30),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 3),
          child: _CustomIconButton(value: 0, icon: Icons.play_circle_outlined, onPressed: () {
            // Handle comment button press
          }),
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;  
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const _CustomIconButton({
    required this.value,
    required this.icon,
    required this.onPressed,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: color, size: 30),
        ),
        if (value > 0)
          Text(HummanFormats.formatNumber(value), style: TextStyle(color: color, fontSize: 16)),
      ],
    );
  }
} 