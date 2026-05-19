import 'package:bengo_app/Features/Home/presentation/views/widgets/course_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoursesGridView extends StatelessWidget {
  const CoursesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // زودنا Padding هنا عشان نصغر الكروت من الجوانب
      padding: EdgeInsets.symmetric(horizontal: 10.w), 
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.w, // مسافة أكبر شوية بين الكارتين
          mainAxisSpacing: 20.h,
          // لو الكارت طويل زيادة: كبّر الرقم (مثلاً 0.65)
          // لو الكارت قصير زيادة: صغّر الرقم (مثلاً 0.55)
          childAspectRatio: 0.52, 
        ),
        itemBuilder: (context, index) => const CourseItem(),
      ),
    );
  }
}