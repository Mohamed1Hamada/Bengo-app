import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowMoreStatCard extends StatelessWidget {
  const ShowMoreStatCard({
    super.key,
    required this.title,
    required this.value,
    this.suffix,
  });

  final String title;
  final String value;
  final String? suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.14),
            blurRadius: 18,
            spreadRadius: -4,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF9E9E9E),
              fontWeight: FontWeight.w500,
              fontFamily: 'Cairo',
            ),
          ),
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              if (suffix != null) ...[
                Flexible(
                  child: Text(
                    suffix!,
                    style: Styles.textStyle16.copyWith(
                      color: const Color(0xFF2B4EA2),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ),
                SizedBox(width: 4.w),
              ],
              Flexible(
                child: Text(
                  value,
                  style: Styles.textStyle24.copyWith(
                    color: const Color(0xFF2B4EA2),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}