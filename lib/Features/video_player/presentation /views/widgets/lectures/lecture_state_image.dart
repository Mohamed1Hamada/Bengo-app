import 'package:flutter/material.dart';

import 'lecture_watch_state.dart';

class LectureStateImage extends StatelessWidget {
  const LectureStateImage({super.key, required this.watchState});

  final LectureWatchState watchState;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _getImagePath(),
      width: 60,
      height: 60,
      fit: BoxFit.contain,
    );
  }

  String _getImagePath() {
    switch (watchState) {
      case LectureWatchState.completed:
        return 'assets/images/videosIcon2.png';

      case LectureWatchState.playable:
        return 'assets/images/videosIcon3.png';

      case LectureWatchState.locked:
        return 'assets/images/videoicon4.png';
    }
  }
}
