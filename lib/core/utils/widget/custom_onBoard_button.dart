import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOnBoardButton extends StatelessWidget {
  const CustomOnBoardButton({
    super.key,
    required this.text,
    this.isPrimary = true,
    this.onPressed,
    this.width,
    this.height,
  });

  final String text;
  final bool isPrimary;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 100.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: isPrimary
              ? Colors.white
              : Colors.white.withValues(alpha: 0.18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.r),
          ),
          elevation: isPrimary ? 4 : 0,
          shadowColor: Colors.black.withValues(alpha: 0.4),
        ),
        child: Text(
          text,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w700,
            color: isPrimary ? const Color(0xFF272323) : Colors.white,
          ),
        ),
      ),
    );
  }
}
