import 'package:bengo_app/Features/Courses/presentation/views/widgets/build_linear_progress_indicator.dart';
import 'package:bengo_app/Features/Home/data/models/custom_course_card_model.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class MyCoursesCard extends StatelessWidget {
  final CustomCourseCardModel model;

  const MyCoursesCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: _cardDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // القسم الخاص بالصورة (على اليمين)
            _CourseImage(image: model.image),
            const SizedBox(width: 12),
            // القسم الخاص بالمعلومات (على اليسار)
            Expanded(child: _CourseInfoSection(model: model)),
          ],
        ),
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: const Color(0xFFF0F0F0), width: 1),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.04),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }
}

class _CourseInfoSection extends StatelessWidget {
  final CustomCourseCardModel model;
  const _CourseInfoSection({required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.bold,
            color: const Color(0xFF272323),
          ),
        ),
        Text(
          model.category,
          style: Styles.textStyle14.copyWith(color: const Color(0xFF542343)),
        ),
        const SizedBox(height: 12),

        model.isCompleted == true
            ? _buildCompletedView()
            : _buildInProgressView(),

        const SizedBox(height: 6),
        BuildLinearProgressIndicator(model: model),
      ],
    );
  }

  // ميثود حالة الاكتمال
  Widget _buildCompletedView() {
    return Row(
      children: [
        const Image(
          image: AssetImage("assets/images/✓.png"),
          width: 12,
          height: 12,
        ),
        const SizedBox(width: 4),
        Text(
          "مكتمل",
          style: Styles.textStyle12.copyWith(
            color: const Color(0xff10B981),
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 32),
        Text(
          "تم شراء الكورس كامل",
          style: Styles.textStyle12.copyWith(
            color: const Color(0xff10B981),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  // ميثod حالة قيد التقدم
  Widget _buildInProgressView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${(model.progress! * 100).toInt()}%",
          style: Styles.textStyle12.copyWith(
            color: const Color(0xFF3B82F6),
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          model.availableText ?? "",
          style: Styles.textStyle12.copyWith(
            color: const Color(0xFF3B82F6),
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _CourseImage extends StatelessWidget {
  final String image;
  const _CourseImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        image,
        width: 105,
        height: 120,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) =>
            Container(width: 105, height: 120, color: Colors.grey[300]),
      ),
    );
  }
}
