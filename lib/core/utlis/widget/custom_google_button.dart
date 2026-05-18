import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGoogleButton extends StatelessWidget {
  const CustomGoogleButton({super.key, required this.text});
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: const Color(0x4DFFFFFF)),
        color: const Color(0x33FFFFFF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Styles.textStyle16.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'Cairo',
            ),
          ),
          SizedBox(width: 8.w),
          Image.asset(AsstesData.googleIcon, width: 30.w, height: 30.h),
        ],
      ),
    );
  }
}
