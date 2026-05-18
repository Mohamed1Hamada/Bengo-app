import 'package:bengo_app/Features/Home/presentation/views/widgets/custom_home_header.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/home_search_field.dart';
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
            SizedBox(height: 25.h),
            const HomeSearchField(),
            //  SizedBox(height: 25.h),
            // const PromoBanner(),
            // SizedBox(height: 30.h),

            // هنا هنضيف جزء "الكورسات" والـ Categories في الخطوة الجاية
          ],
        ),
      ),
    );
  }
}
