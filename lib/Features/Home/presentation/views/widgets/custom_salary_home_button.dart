import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSalaryHomeButton extends StatelessWidget {
  const CustomSalaryHomeButton({super.key, required this.price});
  final String price;

  @override
  Widget build(BuildContext context) {
    return  
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
          decoration: BoxDecoration(
            
            gradient: AppStyles.kSalaryHomeButton,
            borderRadius: BorderRadius.circular(50.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "ج.م",
                style: Styles.textStyle12.copyWith(
                 
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Cairo',
                ),
              ),
              SizedBox(width: 4.w), // مسافة بسيطة بين الرقم والعملة
              Text(
                price,
                style: Styles.textStyle12.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Cairo',
                ),
              ),
            ],
          ),
        );
  }
}