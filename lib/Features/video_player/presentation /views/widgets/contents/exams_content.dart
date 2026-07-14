import 'package:flutter/material.dart';

import '../resources/course_resource_ui_model.dart';
import '../resources/course_resources_list.dart';

class ExamsContent extends StatelessWidget {
  const ExamsContent({super.key});

  static const List<CourseResourceUiModel> _items = [
    CourseResourceUiModel(
      title: 'اختبار الوحدة الأولى',
      imagePath: 'assets/images/tapIcon3.png',
    ),
    CourseResourceUiModel(
      title: 'اختبار الوحدة الثانية',
      imagePath: 'assets/images/tapIcon3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const CourseResourcesList(items: _items);
  }
}
