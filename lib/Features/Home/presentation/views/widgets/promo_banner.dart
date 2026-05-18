import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: const LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color(0xFF2D2A4A), // بنفسجي غامق
            Color(0xFFB71C1C), // أحمر
          ],
        ),
      ),
      child: Stack(
        children: [
          // النصوص
          Padding(
            padding: EdgeInsets.only(right: 20.w, top: 25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "اشحن رصيد منصتك",
                  style: TextStyle(color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold, fontFamily: 'Cairo'),
                ),
                SizedBox(height: 8.h),
                Text(
                  "اشحن محفظتك برصيد الكارت\nواكمل الدفع بسهولة.",
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 12.sp, fontFamily: 'Cairo'),
                ),
              ],
            ),
          ),
          // صورة الشخص (تأكد من إضافة الصورة في Assets)
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/man_image.png', // الصورة اللي في الديزاين
              height: 150.h,
            ),
          ),
        ],
      ),
    );
  }
}