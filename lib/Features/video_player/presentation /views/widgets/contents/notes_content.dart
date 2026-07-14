import 'package:bengo_app/Features/video_player/presentation%20/views/widgets/tabs/empty_content_box.dart';
import 'package:flutter/material.dart';

class NotesContent extends StatelessWidget {
  const NotesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: EmptyContentBox(
        title: 'ملاحظات',
        icon: Icons.insert_drive_file_outlined,
      ),
    );
  }
}
