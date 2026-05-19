import 'package:bengo_app/Features/Home/presentation/views/widgets/courses_grid_view.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/no_course_view.dart';
import 'package:flutter/material.dart';

class BuildCategoryContent extends StatelessWidget {
  const BuildCategoryContent({super.key, required this.selectedCategoryIndex});

  final int selectedCategoryIndex;

  @override
  Widget build(BuildContext context) {
    if (selectedCategoryIndex == 1) {
      // لو القسم هو "محاسبة" (index 1)
      return const CoursesGridView();
    } else {
      // لو أي قسم تاني فاضي - اعرض الـ NoCoursesView الجديد
      return const NoCoursesView();
    }
  }
}
