import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoCoursesView extends StatelessWidget {
  const NoCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120.w,
            height: 120.h,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F5F7),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Image.asset(
              AsstesData.noCourse,
              width: 60.w,
              height: 60.h,
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(height: 24.h),

          Text(
            "لا توجد كورسات",
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF272323),
              fontFamily: 'Cairo',
            ),
          ),

          SizedBox(height: 8.h),

          Text(
            "لا توجد كورسات متاحة في هذه الفئة حالياً",
            textAlign: TextAlign.center,
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF9E9E9E),
              fontFamily: 'Cairo',
            ),
          ),
        ],
      ),
    );
  }
}
