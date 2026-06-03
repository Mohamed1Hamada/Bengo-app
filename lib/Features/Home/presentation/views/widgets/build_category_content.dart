import 'package:bengo_app/Features/Home/presentation/views/widgets/course_item.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/no_course_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildCategoryContent extends StatelessWidget {
  const BuildCategoryContent({super.key, required this.selectedCategoryIndex});

  final int selectedCategoryIndex;

  @override
  Widget build(BuildContext context) {
    if (selectedCategoryIndex == 1) {
     
      return SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 10.h),
        sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.w,
            mainAxisSpacing: 20.h,
            childAspectRatio: 0.48,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) => const CourseItem(),
            childCount: 4,
          ),
        ),
      );
    } else {
      // تغليف الـ Widget العادي بـ SliverToBoxAdapter
      return const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: NoCoursesView(),
        ),
      );
    }
  }
}
