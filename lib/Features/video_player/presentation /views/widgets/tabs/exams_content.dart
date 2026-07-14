import 'package:bengo_app/Features/video_player/presentation%20/views/widgets/tabs/empty_content_box.dart';
import 'package:flutter/material.dart';

class ExamsContent extends StatelessWidget {
  const ExamsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: EmptyContentBox(
        title: 'الامتحانات',
        icon: Icons.assignment_outlined,
      ),
    );
  }
}
