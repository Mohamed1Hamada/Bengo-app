import 'package:bengo_app/core/utils/asstes.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildLogoBadge extends StatelessWidget {
  const BuildLogoBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.r,
      height: 290.r,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppStyles.kLogoBadgeColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0x40000000),
            blurRadius: 60.r,
            spreadRadius: -18.r,
            offset: Offset(0, 30.h),
          ),
          BoxShadow(
            color: const Color(0x40000000),
            blurRadius: 6.r,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Image.asset(
        AssetsData.logo,
        width: 260.r,
        height: 260.r,
        fit: BoxFit.contain,
      ),
    );
  }
}
