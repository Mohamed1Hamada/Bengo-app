import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CoursesHeader extends StatelessWidget {
  const CoursesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // عرض المزيد (على الشمال)
        GestureDetector(
          onTap: () {
            // التنقل لصفحة كل الكورسات
          },
          child: Text(
            "عرض المزيد",
            style: Styles.textStyle16.copyWith(
              color: const Color(0xFFD62828), // اللون الأحمر/الوردي زي الفيجما
              fontWeight: FontWeight.w600,
              fontFamily: 'Cairo',
            ),
          ),
        ),

        const Spacer(),

        // كورسات (على اليمين)
        Text(
          "كورسات",
          style: Styles.textStyle24.copyWith(
            fontWeight: FontWeight.bold,
            color: const Color(0xFF272323),
            fontFamily: 'Cairo',
          ),
        ),
      ],
    );
  }
}