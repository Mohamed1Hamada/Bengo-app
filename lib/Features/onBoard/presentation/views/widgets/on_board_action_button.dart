import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.isPrimary = true,
    this.onPressed,

    this.borderWidth = 1.5,
  });

  final String text;
  final bool isPrimary;
  final VoidCallback? onPressed;

  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 550.w,
      height: 118.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: isPrimary
              ? Colors.white
              : Colors.white.withValues(alpha: 0.18),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.r),
            side: BorderSide(color: Colors.transparent),
          ),

          padding: EdgeInsets.zero,
          elevation: isPrimary ? 8 : 0,
          shadowColor: isPrimary ? Color(0xFF272323) : Colors.transparent,
        ),
        child: Text(
          text,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w700,
            color: isPrimary ? const Color(0xFF272323) : Colors.white,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
