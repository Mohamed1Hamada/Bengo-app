import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
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
                image: AssetImage(AsstesData.test1),
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

        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
          decoration: BoxDecoration(
            // التعديل هنا: نستخدم gradient بدل color
            gradient: AppStyles.kButton,
            borderRadius: BorderRadius.circular(50.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "ج.م",
                style: Styles.textStyle12.copyWith(
                  // أصغر شوية بيدي شكل أحلى
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Cairo',
                ),
              ),
              SizedBox(width: 4.w), // مسافة بسيطة بين الرقم والعملة
              Text(
                "299",
                style: Styles.textStyle12.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Cairo',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
