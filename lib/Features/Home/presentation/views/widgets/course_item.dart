import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/custom_salary_home_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: 120 / 160,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              image: const DecorationImage(
                image: AssetImage(AssetsData.test1),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 8.h),

        // 2. اسم الكورس
        Text(
          "محاسبة مالية",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w600,
            color: const Color(0xFF272323),
            fontFamily: 'Cairo',
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          "الفرقة الأولى",
          style: Styles.textStyle14.copyWith(
            color: const Color(0xFF542343),
            fontWeight: FontWeight.w600,
            fontFamily: 'Cairo',
          ),
        ),

        SizedBox(height: 12.h),
        const CustomSalaryHomeButton(price: '299'),
      ],
    );
  }
}
