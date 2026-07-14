import 'package:bengo_app/Features/select_package/presentation/views/widgets/confirm_purchase_dialog.dart';
import 'package:bengo_app/Features/video_player/presentation%20/views/widgets/lectures/course_lecture_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideosContent extends StatefulWidget {
  const VideosContent({super.key});

  @override
  State<VideosContent> createState() => _VideosContentState();
}

class _VideosContentState extends State<VideosContent> {
  int selectedLectureIndex = 0;

  void _selectLecture(int index) {
    setState(() {
      selectedLectureIndex = index;
    });
  }

  void _showPurchaseDialog({
    required String lectureTitle,
    required String lecturePrice,
  }) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ConfirmPurchaseDialog(
          itemName: lectureTitle,
          price: lecturePrice,
        ),
      ),
    );
  }

  Widget _lectureGap() {
    return const SizedBox(height: 12);
  }

  Widget _availableLectureCard({
    required int index,
    required String title,
    required String duration,
    required LectureWatchState watchState,
  }) {
    return CourseLectureCard(
      title: title,
      duration: duration,
      isSelected: selectedLectureIndex == index,
      watchState: watchState,
      onTap: () {
        _selectLecture(index);
      },
    );
  }

  Widget _lockedLectureCard({
    required String title,
    required String duration,
    required String price,
  }) {
    return CourseLectureCard(
      title: title,
      duration: duration,
      isSelected: false,
      watchState: LectureWatchState.locked,
      price: price,
      onPriceTap: () {
        _showPurchaseDialog(lectureTitle: title, lecturePrice: price);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _availableLectureCard(
          index: 0,
          title: 'المحاضرة الأولى - مقدمة\nفي المحاسبة',
          duration: '45:30',
          watchState: LectureWatchState.completed,
        ),

        _lectureGap(),

        _availableLectureCard(
          index: 1,
          title: 'المحاضرة الثانية - المعادلة المحاسبية',
          duration: '38:15',
          watchState: LectureWatchState.completed,
        ),

        _lectureGap(),

        _availableLectureCard(
          index: 2,
          title: 'المحاضرة الثالثة - القيود اليومية',
          duration: '52:20',
          watchState: LectureWatchState.playable,
        ),

        _lectureGap(),

        _lockedLectureCard(
          title: 'المحاضرة الرابعة - دفتر الأستاذ',
          duration: '41:45',
          price: '48 ج.م',
        ),

        _lectureGap(),

        _lockedLectureCard(
          title: 'المحاضرة الخامسة - ميزان المراجعة',
          duration: '48:10',
          price: '60 ج.م',
        ),
      ],
    );
  }
}
