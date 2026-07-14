import 'package:flutter/material.dart';

import '../resources/course_resource_ui_model.dart';
import '../resources/course_resources_list.dart';

class MemosContent extends StatelessWidget {
  const MemosContent({super.key});

  static const List<CourseResourceUiModel> _items = [
    CourseResourceUiModel(
      title: 'مذكرة الفصل الأول -\nمقدمة المحاسبة',
      subtitle: '25 صفحة 2.5 MB',
      imagePath: 'assets/images/tapIcon2.png',
    ),
    CourseResourceUiModel(
      title: 'مذكرة الفصل الثاني -\nالمعادلة المحاسبية',
      subtitle: '18 صفحة 1.8 MB',
      imagePath: 'assets/images/tapIcon2.png',
    ),
    CourseResourceUiModel(
      title: 'مذكرة الفصل الثالث -\nالقيود اليومية',
      subtitle: '30 صفحة 3.2 MB',
      imagePath: 'assets/images/tapIcon2.png',
      access: CourseResourceAccess.locked,
      lockedLabel: 'مقفل',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const CourseResourcesList(items: _items);
  }
}
