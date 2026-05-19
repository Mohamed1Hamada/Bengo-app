import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // 1. جسم البانر الملون
          Container(
            width: double.infinity,
            height: 300.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28.r),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFD62828), // أحمر
                  Color(0xFF001F54), // أزرق غامق
                ],
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(28.r),
              child: Stack(
                children: [
                  // --- استخدام الـ Widgets بتاعتك هنا (خلف الشخص) ---
                  Positioned(
                    top: -200.h, // ظبطت الأرقام عشان تناسب ارتفاع البانر 300
                    right: -100.w,
                    child: _GradientCircle(size: 460.r, opacity: 0.16),
                  ),
                  Positioned(
                    top: -210.h,
                    right: -110.w,
                    child: _CircleBorder(size: 490.r, opacity: 0.33, borderWidth: 2.r),
                  ),
                ],
              ),
            ),
          ),

          // 2. صورة الشخص (فوق الدوائر)
          Positioned(
            right: 0,
            bottom: 0, 
            child: Image.asset(
              AsstesData.bannerMan,
              height: 400.h, 
              fit: BoxFit.contain,
            ),
          ),

          // 3. النصوص (على الشمال)
          Positioned(
            left: 30.w,
            top: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "اشحن رصيد منّصتك",
                  style: Styles.textStyle22.copyWith(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    height: 1.3,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  "اشحن محفظتك برصيد الكارت\nواكمل الدفع بسهولة",
                  textAlign: TextAlign.end,
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ==================== الـ Private Widgets اللي إنت بعتها ====================

class _GradientCircle extends StatelessWidget {
  const _GradientCircle({required this.size, required this.opacity});

  final double size;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(opacity), // استخدمت Opacity العادية عشان التوافق
      ),
    );
  }
}

class _CircleBorder extends StatelessWidget {
  const _CircleBorder({
    required this.size,
    required this.opacity,
    this.borderWidth = 1,
  });

  final double size;
  final double opacity;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withOpacity(opacity),
          width: borderWidth,
        ),
      ),
    );
  }
}