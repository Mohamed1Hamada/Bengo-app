import 'package:bengo_app/Features/select_package/presentation/views/widgets/confirm_purchase_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../lectures/course_lecture_card.dart';

class VideosContent extends StatefulWidget {
  const VideosContent({super.key});

  @override
  State<VideosContent> createState() => _VideosContentState();
}

class _VideosContentState extends State<VideosContent> {
  int selectedLectureIndex = 0;

  static const List<_LectureItem> _lectures = [
    _LectureItem(
      title: 'المحاضرة الأولى - مقدمة\nفي المحاسبة',
      duration: '45:30',
      watchState: LectureWatchState.completed,
    ),
    _LectureItem(
      title: 'المحاضرة الثانية - المعادلة المحاسبية',
      duration: '38:15',
      watchState: LectureWatchState.completed,
    ),
    _LectureItem(
      title: 'المحاضرة الثالثة - القيود اليومية',
      duration: '52:20',
      watchState: LectureWatchState.playable,
    ),
    _LectureItem(
      title: 'المحاضرة الرابعة - دفتر الأستاذ',
      duration: '41:45',
      watchState: LectureWatchState.locked,
      price: '48',
    ),
    _LectureItem(
      title: 'المحاضرة الخامسة - ميزان المراجعة',
      duration: '48:10',
      watchState: LectureWatchState.locked,
      price: '60',
    ),
  ];

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

  Widget _lectureCard({required int index, required _LectureItem item}) {
    final bool isLocked = item.watchState == LectureWatchState.locked;

    return CourseLectureCard(
      title: item.title,
      duration: item.duration,
      isSelected: isLocked ? false : selectedLectureIndex == index,
      watchState: item.watchState,
      price: item.price,
      onTap: isLocked
          ? null
          : () {
              _selectLecture(index);
            },
      onPriceTap: item.price == null
          ? null
          : () {
              _showPurchaseDialog(
                lectureTitle: item.title,
                lecturePrice: item.price!,
              );
            },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int index = 0; index < _lectures.length; index++) ...[
          _lectureCard(index: index, item: _lectures[index]),
          if (index != _lectures.length - 1) const SizedBox(height: 12),
        ],
      ],
    );
  }
}

class _LectureItem {
  const _LectureItem({
    required this.title,
    required this.duration,
    required this.watchState,
    this.price,
  });

  final String title;
  final String duration;
  final LectureWatchState watchState;
  final String? price;
}
