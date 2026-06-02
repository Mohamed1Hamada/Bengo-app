import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSalaryHomeButton extends StatelessWidget {
  const CustomSalaryHomeButton({super.key, required this.price});
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      height: 80.h,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: BoxDecoration(
        gradient: AppStyles.kSalaryHomeButton,
        borderRadius: BorderRadius.circular(40.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),

      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ج.م",
              style: Styles.textStyle14.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Cairo',
              ),
            ),
            SizedBox(width: 4.w),
            Text(
              price,
              style: Styles.textStyle14.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Cairo',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
