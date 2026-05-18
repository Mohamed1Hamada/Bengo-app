import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF3F5F7), // رمادي فاتح جداً
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: TextField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: "بحث...",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp, fontFamily: 'Cairo'),
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
        ),
      ),
    );
  }
}