import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSalarySearchButton extends StatelessWidget {
  final String price;
  const CustomSalarySearchButton({required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        gradient: AppStyles.kSalarySearchButton,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "ج.م",
            style: Styles.textStyle14.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontFamily: 'Cairo',
            ),
          ),
          SizedBox(width: 4.w),
          Text(
            price,
            style: Styles.textStyle14.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
            ),
          ),
        ],
      ),
    );
  }
}
