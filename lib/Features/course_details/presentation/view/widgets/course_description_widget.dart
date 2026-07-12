import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CourseDescriptionWidget extends StatelessWidget {
  const CourseDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "نبذة عن المادة",
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
              color: Color(0xFF272323),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'في هذه الدورة، ستتعلم برنامجًا تدريبيًا شاملًا لتجربة المستخدم، وستتقن تقنيات التصميم المرتكزة على المستخدم. ستتعلم أيضًا كيفية إنشاء النماذج الأولية الرقمية بشكل صحيح. في نهاية هذه الدورة، ستكون مستعدًا لاستكشاف تصميم تجربة المستخدم على طريقتك الخاصة.',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xFF272323).withValues(alpha: 0.7),
            fontWeight: FontWeight.w500,
            height: 1.6,
          ),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
