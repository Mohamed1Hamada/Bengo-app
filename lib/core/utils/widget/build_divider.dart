import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildDivider extends StatelessWidget {
  const BuildDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Color(0x4DFFFFFF))),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Text(
            "أو",
            style: Styles.textStyle14.copyWith(
              color: Colors.white54,
              fontFamily: 'Cairo',
            ),
          ),
        ),
        Expanded(child: Divider(color: Color(0x4DFFFFFF))),
      ],
    );
  }
}
