import 'package:bengo_app/core/utils/app_router.dart';
import 'package:bengo_app/core/utils/asstes.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/custom_salary_home_button.dart';
// 1. استيراد صفحة التفاصيل (تأكد من المسار الصحيح عندك)
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center, // تم تصحيح الخطأ هنا (شلت الأقواس المربعة)
      children: [
        // 2. تغليف الجزء العلوي بـ InkWell لجعله قابلاً للضغط
        Expanded(
          child: InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kCourseDetailsView);
            },
            borderRadius: BorderRadius.circular(
              24.r,
            ), // عشان تأثير الضغطة (Ripple effect) يكون دائري زي الكارت
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.test1),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 8.h),
        // جعل النصوص أيضاً قابلة للضغط للانتقال للتفاصيل
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kCourseDetailsView);
          },
          child: Column(
            children: [
              Text(
                "محاسبة مالية",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF272323),
                ),
              ),
              Text(
                "الفرقة الأولى",
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff542343),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 32.h),
        const CustomSalaryHomeButton(price: '299'),
      ],
    );
  }
}
