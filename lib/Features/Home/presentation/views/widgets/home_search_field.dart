import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({
    super.key,
    this.onTap,     
    this.readOnly = false, 
    this.autoFocus = false, 
  });

  final VoidCallback? onTap;
  final bool readOnly;
  final bool autoFocus;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 240, 253),
        borderRadius: BorderRadius.circular(15.r), 
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        onTap: onTap,        
        readOnly: readOnly, 
        autofocus: autoFocus, 
        textAlign: TextAlign.right,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          hintText: " ...بحث",
          hintStyle: Styles.textStyle14.copyWith(
            color: const Color(0xFF9E9E9E),
            fontFamily: 'Cairo',
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: FaIcon( 
              FontAwesomeIcons.magnifyingGlass,
              color: const Color(0xFF9E9E9E),
              size: 20.sp,
            ),
          ),
          suffixIconConstraints: BoxConstraints(
            minWidth: 40.w,
            minHeight: 40.h,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            vertical: 18.h, 
            horizontal: 20.w,
          ),
        ),
      ),
    );
  }
}