import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 240, 253), // اللون اللي اخترته ممتاز
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: TextField(
        textAlign: TextAlign.right, // الكتابة من اليمين للشمال
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          hintText: " ...بحث",
          hintStyle: Styles.textStyle14.copyWith(
            color: const Color(0xFF9E9E9E),
            fontFamily: 'Cairo',
          ),
          // تحسين وضع الأيقونة
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ), // مسافة الأيقونة من الطرف
            child: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: const Color(0xFF9E9E9E),
              size: 24,
            ),
          ),
          suffixIconConstraints: BoxConstraints(
            minWidth: 40.w,
            minHeight: 40.h,
          ),
          border: InputBorder.none,
          // تظبيط الـ Padding الداخلي عشان الكلام يكون في النص بالظبط
          contentPadding: EdgeInsets.symmetric(
            vertical: 32.h, // زودنا الارتفاع شوية عشان الراحة البصرية
            horizontal: 20.w,
          ),
        ),
      ),
    );
  }
}
