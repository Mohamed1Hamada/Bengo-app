import 'package:bengo_app/Features/course_details/presentation/view/widgets/buy_course_bottom_bar.dart';
import 'package:bengo_app/Features/course_details/presentation/view/widgets/course_details_view_body.dart';
import 'package:flutter/material.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: const BuyCourseBottomBar(),

      body: CourseDetailsBody(),
    );
  }
}
