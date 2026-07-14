import 'package:bengo_app/Features/video_player/presentation%20/views/widgets/course_player_body.dart';
import 'package:bengo_app/Features/video_player/presentation%20/views/widgets/video_header_widget.dart';
import 'package:flutter/material.dart';

class CoursePlayerView extends StatelessWidget {
  const CoursePlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          VideoHeaderWidget(),

          Positioned.fill(top: 160, child: CoursePlayerBody()),
        ],
      ),
    );
  }
}
