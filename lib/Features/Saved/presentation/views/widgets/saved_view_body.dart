import 'package:bengo_app/Features/Saved/presentation/view%20model/saves_view_model.dart';
import 'package:bengo_app/Features/Saved/presentation/views/widgets/empty_state.dart';
import 'package:bengo_app/Features/Saved/presentation/views/widgets/saves_header.dart';
import 'package:bengo_app/Features/Saved/presentation/views/widgets/video_card.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SavedViewBody extends StatefulWidget {
  const SavedViewBody({super.key});

  @override
  State<SavedViewBody> createState() => _SavedViewBodyState();
}

class _SavedViewBodyState extends State<SavedViewBody> {
  final viewModel = SavesViewModel(); // تم تعريفه هنا لعدم تكرار الإنشاء

  @override
  Widget build(BuildContext context) {
    final videos = viewModel.getSavedVideos();
    final totalTime = viewModel.getTotalHours(videos);

    return Column(
      children: [
        SavesHeader(
          videoCount: videos.length,
          totalTime: videos.isEmpty ? "0:00" : totalTime,
        ),
        SizedBox(height: 50), // مسافة بين الهيدر والقائمة
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'الفيديوهات المحفوظة',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color(0xFF272323),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: videos.isEmpty
              ? const EmptyState()
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: videos.length,
                  itemBuilder: (context, index) =>
                      VideoCard(video: videos[index]),
                ),
        ),
      ],
    );
  }
}
