import 'package:bengo_app/Features/video_player/presentation%20/views/widgets/tabs/empty_content_box.dart';
import 'package:flutter/material.dart';

class MemosContent extends StatelessWidget {
  const MemosContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: EmptyContentBox(
        title: 'المذكرات',
        icon: Icons.description_outlined,
      ),
    );
  }
}
