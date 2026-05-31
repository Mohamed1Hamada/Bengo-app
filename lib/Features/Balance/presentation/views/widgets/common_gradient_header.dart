import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonGradientHeader extends StatelessWidget {
  const CommonGradientHeader({
    super.key,
    required this.title,
    required this.subTitle,
    required this.floatingChild,
    this.headerHeight,
    this.floatingBottom,
    this.onBackTap,
    this.leading,
  });

  final String title;
  final String subTitle;
  final Widget floatingChild;
  final double? headerHeight;
  final double? floatingBottom;
  final VoidCallback? onBackTap;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: headerHeight ?? 205.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: AppStyles.kMainGradient,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 52.h, left: 24.w, right: 24.w),
            child: Row(
              children: [
                leading ?? const Spacer(),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.right,
                        style: Styles.textStyle28.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo',
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        subTitle,
                        textAlign: TextAlign.right,
                        style: Styles.textStyle14.copyWith(
                          color: Colors.white.withOpacity(.85),
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.w),
                GestureDetector(
                  onTap: onBackTap ?? () => Navigator.pop(context),
                  child: Container(
                    width: 34.w,
                    height: 34.w,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.18),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: floatingBottom ?? -45.h,
          left: 22.w,
          right: 22.w,
          child: floatingChild,
        ),
      ],
    );
  }
}
