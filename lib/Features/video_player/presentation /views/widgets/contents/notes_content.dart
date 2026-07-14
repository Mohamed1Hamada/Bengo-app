import 'package:flutter/material.dart';

import '../resources/course_resource_ui_model.dart';
import '../resources/course_resources_list.dart';

class NotesContent extends StatelessWidget {
  const NotesContent({super.key});

  static const List<CourseResourceUiModel> _items = [
    CourseResourceUiModel(
      title: 'ملاحظة هامة -\nالمحاضرة الأولى',
      subtitle:
          'يرجى التركيز على الفرق بين المحاسبة المالية والمحاسبة الإدارية في هذا الدرس لأنه سيكون جزء أساسي في امتحان النهائي.',
      imagePath: 'assets/images/tapIcon4.png',
      badgeLabel: 'هام',
      isHighlighted: true,
      height: 124,
    ),
    CourseResourceUiModel(
      title: 'نصيحة للمحاضرة',
      subtitle:
          'احرص على حل التمارين العملية بعد كل محاضرة لفهم القيود والمعادلات بشكل أفضل.',
      imagePath: 'assets/images/tapIcon4.png',
      height: 96,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const CourseResourcesList(items: _items);
  }
}
