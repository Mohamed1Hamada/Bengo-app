import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class EditProfileHeader extends StatelessWidget {
  final VoidCallback? onBack;
  final String title;

  const EditProfileHeader({
    super.key,
    this.onBack,
    this.title = 'تعديل البيانات',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // زيادة الـ padding السفلي لتكبير الـ Container كما طلبت
      padding: const EdgeInsets.fromLTRB(16, 36, 16, 140),
      decoration: BoxDecoration(gradient: AppStyles.kSalaryHomeButton),
      child: Row(
        children: [
          // العنوان في المنتصف (يأخذ مساحة مرنة)
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Styles.textStyle24.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          // زر الرجوع في الجانب الآخر
          GestureDetector(
            onTap: onBack,
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
