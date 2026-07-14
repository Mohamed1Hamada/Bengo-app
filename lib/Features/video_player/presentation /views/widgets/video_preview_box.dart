import 'package:bengo_app/Features/video_player/presentation%20/views/widgets/bookmark_circle_button.dart';
import 'package:flutter/material.dart';

class VideoPreviewBox extends StatelessWidget {
  const VideoPreviewBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Stack(
        clipBehavior: Clip.none,
        children: const [
          VideoPlaceHolder(),
          Positioned(left: 0, top: 234, child: BookmarkCircleButton()),
        ],
      ),
    );
  }
}

class VideoPlaceHolder extends StatelessWidget {
  const VideoPlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 214,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xFF1D071C),
        boxShadow: const [
          BoxShadow(
            color: Color(0x24000000),
            blurRadius: 22,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: Center(
        child: Container(
          width: 98,
          height: 98,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Color(0xFFD32F2F),
              size: 72,
            ),
          ),
        ),
      ),
    );
  }
}
