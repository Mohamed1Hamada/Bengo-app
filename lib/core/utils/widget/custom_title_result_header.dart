import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTitleResultHeader extends StatelessWidget {
  const CustomTitleResultHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          title,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: 'Cairo',
            color: const Color(0xFF272323),
          ),
        ),
      ),
    );
  }
}
