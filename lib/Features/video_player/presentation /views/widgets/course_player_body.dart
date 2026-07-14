import 'package:bengo_app/Features/video_player/presentation%20/views/widgets/contents/exams_content.dart';
import 'package:bengo_app/Features/video_player/presentation%20/views/widgets/contents/memos_content.dart';
import 'package:bengo_app/Features/video_player/presentation%20/views/widgets/contents/notes_content.dart';
import 'package:bengo_app/Features/video_player/presentation%20/views/widgets/contents/videos_content.dart';
import 'package:flutter/material.dart';

import 'current_lecture_info.dart';

import 'tabs/course_content_tabs.dart';
import 'video_preview_box.dart';

class CoursePlayerBody extends StatefulWidget {
  const CoursePlayerBody({super.key});

  @override
  State<CoursePlayerBody> createState() => _CoursePlayerBodyState();
}

class _CoursePlayerBodyState extends State<CoursePlayerBody> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
        child: ColoredBox(
          color: Colors.white,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(top: 30, bottom: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const VideoPreviewBox(),

                const SizedBox(height: 26),

                const CurrentLectureInfo(),

                const SizedBox(height: 25),

                CourseContentTabs(
                  selectedIndex: selectedTabIndex,
                  onTabChanged: (index) {
                    setState(() {
                      selectedTabIndex = index;
                    });
                  },
                ),

                const SizedBox(height: 25),

                _buildSelectedTabContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedTabContent() {
    switch (selectedTabIndex) {
      case 0:
        return const VideosContent();

      case 1:
        return const MemosContent();

      case 2:
        return const ExamsContent();

      case 3:
        return const NotesContent();

      default:
        return const VideosContent();
    }
  }
}
