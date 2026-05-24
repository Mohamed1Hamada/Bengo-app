import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: TextField(
        textAlign: TextAlign.right,
        autofocus: true,
        cursorColor: const Color(0xff2A2575),
        style: Styles.textStyle16.copyWith(color: Colors.black),
        decoration: InputDecoration(
          hintText: '...إبحث عن كورس',
          hintStyle: Styles.textStyle16.copyWith(
            color: Colors.grey[400],
            fontFamily: 'Cairo',
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.grey[500],
             
            ),
          ),
          suffixIconConstraints: BoxConstraints(
            minWidth: 40.w,
            minHeight: 40.h,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            vertical: 65.h,
            horizontal: 22.w,
          ),
        ),
      ),
    );
  }
}