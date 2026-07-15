import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CourseEmptyState extends StatelessWidget {
  const CourseEmptyState({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.topSpacing = 48,
  });

  const CourseEmptyState.videos({super.key, this.topSpacing = 48})
    : imagePath = 'assets/images/tapIcon.png',
      title = 'لا توجد فيديوهات متاحة',
      description =
          'لم يتم إضافة أي محاضرات فيديو لهذا الكورس حتى الآن. سيتم إشعارك عند التحديثات';

  const CourseEmptyState.memos({super.key, this.topSpacing = 48})
    : imagePath = 'assets/images/tapIcon2.png',
      title = 'لا توجد مذكرات متاحة',
      description =
          'لم يتم إضافة أي مذكرات دراسية لهذا الكورس حتى الآن. سيتم إضافتها قريباً';

  const CourseEmptyState.notes({super.key, this.topSpacing = 48})
    : imagePath = 'assets/images/tapIcon4.png',
      title = 'لا توجد ملاحظات متاحة',
      description =
          'لم يتم إضافة أي ملاحظات أو نصائح عن الدروس لهذا الكورس حتى الآن.';

  const CourseEmptyState.exams({super.key, this.topSpacing = 48})
    : imagePath = 'assets/images/tapIcon3.png',
      title = 'لا توجد امتحانات متاحة',
      description =
          'لم يتم إضافة أي امتحانات لهذا الكورس حتى الآن. سيتم إضافتها قريباً';

  final String imagePath;
  final String title;
  final String description;
  final double topSpacing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topSpacing, right: 45, left: 45),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _EmptyStateIcon(imagePath: imagePath),

            const SizedBox(height: 18),

            Text(
              title,
              textAlign: TextAlign.center,
              style: Styles.textStyle16.copyWith(
                color: const Color(0xFF272323),
                fontWeight: FontWeight.w700,
                height: 1.35,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              description,
              textAlign: TextAlign.center,
              style: Styles.textStyle14.copyWith(
                color: const Color(0xB3272323),
                fontSize: 13,
                fontWeight: FontWeight.w400,
                height: 1.7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyStateIcon extends StatelessWidget {
  const _EmptyStateIcon({required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 74,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF8E8F5),
      ),
      child: Center(
        child: Container(
          width: 58,
          height: 58,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF1DDF0),
          ),
          child: Center(
            child: ShaderMask(
              shaderCallback: (bounds) {
                return AppStyles.kMainGradient.createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: Image.asset(
                imagePath,
                width: 34,
                height: 34,
                fit: BoxFit.contain,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
