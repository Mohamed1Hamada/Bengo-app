import 'package:bengo_app/Features/Saved/presentation/view%20model/saves_view_model.dart';
import 'package:bengo_app/Features/Saved/presentation/views/widgets/empty_state.dart';
import 'package:bengo_app/Features/Saved/presentation/views/widgets/saves_header.dart';
import 'package:bengo_app/Features/Saved/presentation/views/widgets/video_card.dart';
import 'package:flutter/material.dart';

class SavedViewBody extends StatelessWidget {
  final viewModel = SavesViewModel();
  SavedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final videos = viewModel.getSavedVideos();

    return Column(
      children: [
        SavesHeader(videoCount: videos.length, totalTime: "1:24"),
        const SizedBox(height: 50), // مساحة إضافية للبطاقات البارزة
        Expanded(
          child: videos.isEmpty
              ? const EmptyState()
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: videos.length,
                  itemBuilder: (context, index) => VideoCard(video: videos[index]),
                ),
        ),
      ],
    );
  }
}