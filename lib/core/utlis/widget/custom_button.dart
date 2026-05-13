import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.isPrimary = true,
    this.onPressed,
    this.width, // خليته اختياري
    this.height, // خليته اختياري
  });

  final String text;
  final bool isPrimary;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity, // لو مبعتوش ياخد العرض كامل
      height:
          height ?? 100.h, // الارتفاع الافتراضي 56 بكسل (مناسب جداً للموبايل)
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: isPrimary
              ? Colors.white
              : Colors.white.withOpacity(0.18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.r),
          ),
          elevation: isPrimary ? 4 : 0,
          shadowColor: Colors.black.withOpacity(0.4),
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
