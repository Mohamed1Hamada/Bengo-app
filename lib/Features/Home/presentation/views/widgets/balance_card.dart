
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      decoration: BoxDecoration(
        
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 30.r,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: const BoxDecoration(
              color: Color(0xFFFFB74D), // اللون البرتقالي للأيقونة
              shape: BoxShape.circle,
            ),
            child: Text(
              "ج.م",
              style: Styles.textStyle12.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(width: 14.w),
          Text(
            "416",
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w800,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
