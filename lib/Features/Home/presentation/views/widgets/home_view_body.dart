import 'package:bengo_app/Features/Home/presentation/views/widgets/categories_list_view.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/courses_header.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/custom_home_header.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/home_search_field.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/promo_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            const CustomHomeHeader(),
            SizedBox(height: 20.h),
            const HomeSearchField(),
            SizedBox(height: 60.h),
            const PromoBanner(),
            SizedBox(height: 60.h),
            const CoursesHeader(),
            SizedBox(height: 40.h),
            const CategoriesListView(), // الجزء الجديد اللي ضفناه
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
