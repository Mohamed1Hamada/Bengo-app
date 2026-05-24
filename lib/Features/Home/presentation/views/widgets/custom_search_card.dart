import 'package:bengo_app/Features/Home/data/models/custom_course_card_model.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:bengo_app/core/utlis/widget/custom_salary_search_button.dart';
import 'package:flutter/material.dart';

class CustomSearchCard extends StatelessWidget {
  final CustomCourseCardModel model;

  const CustomSearchCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: _cardDecoration(),
      child: Stack(
        children: [
          Row(
            children: [
              // 1. قسم المعلومات (على اليسار)
              Expanded(
                child: _CourseInfoSection(
                  title: model.title,
                  category: model.category,
                  level: model.level,
                  price: model.price,
                ),
              ),
              // 2. قسم الصورة (على اليمين)
              const _CourseImage(
                image: 'assets/images/Image (محاسبة مالية).png',
              ), // استبدل 'image' بالمسار الصحيح للصورة
            ],
          ),
          // 3. بادج الحالة (فوق الجميع)
          const Positioned(
            top: 15,
            left: 15,
            child: _StatusBadge(label: 'مدفوع'),
          ),
        ],
      ),
    );
  }

  // تنسيق خلفية الكارت
  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 10,
          offset: const Offset(0, 5),
        ),
      ],
    );
  }
}

/// 1. ويدجت عرض معلومات الكورس (النصوص والزر)
class _CourseInfoSection extends StatelessWidget {
  final String title;
  final String category;
  final String level;
  final String price;

  const _CourseInfoSection({
    required this.title,
    required this.category,
    required this.level,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 15, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10), // مساحة للبادج العلوي
          Text(
            title,
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
              color: Color(0xFF272323),
            ),
          ),
          Text(
            '$category ▪ $level',
            style: Styles.textStyle14.copyWith(
              color: Color(0xFF542343),
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          const CustomSalarySearchButton(price: '299'),
        ],
      ),
    );
  }
}

/// 2. ويدجت زر السعر المتدرج

/// 3. ويدجت الصورة المقصوصة
class _CourseImage extends StatelessWidget {
  final String image;
  const _CourseImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          image,
          width: 100,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

/// 4. ويدجت البادج (مدفوع / مجاني)
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
