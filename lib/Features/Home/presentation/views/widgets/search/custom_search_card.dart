import 'package:bengo_app/Features/Home/data/models/custom_course_card_model.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:bengo_app/core/utils/widget/custom_salary_search_button.dart';
import 'package:flutter/material.dart';

class CustomSearchCard extends StatelessWidget {
  final CustomCourseCardModel model;
  final bool showPaidBadge;

  const CustomSearchCard({
    super.key,
    required this.model,
    this.showPaidBadge = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(10),
      decoration: _cardDecoration(),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(child: _CourseInfoSection(model: model)),
              const SizedBox(width: 10),
              _CourseImage(model: model),
            ],
          ),
          if (showPaidBadge && model.isPaid)
            const Positioned(
              top: 8,
              left: 8,
              child: _StatusBadge(label: 'مدفوع'),
            ),
        ],
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
          color: Colors.black.withValues(alpha: 0.04),
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
    final priceNumber = model.price?.replaceAll(' ج.م', '').trim();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
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
        const SizedBox(height: 6),
        Text(
          '${model.category} ▪ ${model.level}',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle14.copyWith(
            color: const Color(0xFF542343),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        if (priceNumber != null) CustomSalarySearchButton(price: priceNumber),
      ],
    );
  }
}

class _CourseImage extends StatelessWidget {
  final CustomCourseCardModel model;
  const _CourseImage({required this.model});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        model.image,
        width: 105,
        height: 120,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: 105,
            height: 120,
            color: Colors.grey[200],
            child: const Icon(Icons.broken_image, color: Colors.grey),
          );
        },
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String label;
  const _StatusBadge({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF2B4EA2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: Styles.textStyle14.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
