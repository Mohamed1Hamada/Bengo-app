import 'package:bengo_app/Features/Courses/presentation/views/widgets/my_courses_card.dart';
import 'package:bengo_app/Features/Home/data/models/custom_course_card_model.dart';
import 'package:flutter/material.dart';

class CustomCourseListView extends StatelessWidget {
  final List<CustomCourseCardModel> courses;

  const CustomCourseListView({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        return MyCoursesCard(model: courses[index]);
      },
    );
  }
}