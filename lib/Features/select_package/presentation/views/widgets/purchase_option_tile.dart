import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchaseOptionTile extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final bool isSelected;
  final VoidCallback onTap;

  const PurchaseOptionTile({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 12.h),
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          // تغيير اللون بناءً على حالة الاختيار
          color: isSelected ? const Color(0xFFF8E8F0) : const Color(0xFFF8F9FF),
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: isSelected ? const Color(0xFF6A4C93) : Colors.transparent,
            width: isSelected ? 1.5 : 0,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFFF9C402),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withValues(alpha: 0.3),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                "$price ج.م",
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff272323),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: Styles.textStyle12.copyWith(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
