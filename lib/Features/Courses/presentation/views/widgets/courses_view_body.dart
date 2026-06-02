import 'package:bengo_app/Features/Courses/presentation/views/widgets/courses_status_row.dart';
import 'package:bengo_app/core/utlis/widget/custom_app_header.dart';
import 'package:flutter/material.dart';

class CoursesViewBody extends StatelessWidget {
  const CoursesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppHeader(
          title: 'كورساتي',
          subtitle: ' كورس مسجل 8',
          floatingWidget: CoursesStatsRow(),
        ),
        SizedBox(height: 90),

        SizedBox(height: 32),
      ],
    );
  }
}
