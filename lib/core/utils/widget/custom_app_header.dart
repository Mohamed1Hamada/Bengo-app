import 'package:bengo_app/core/utils/widget/custom_title_column.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/header_circle_button.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppHeader extends StatelessWidget {
  const CustomAppHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.floatingWidget,
    this.headerHeight = 400,
    this.onBackTap,
  });

  final String title;
  final String subtitle;
  final Widget floatingWidget; // البطاقة العائمة (StatsRow أو SearchField)
  final double headerHeight;
  final VoidCallback? onBackTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        // 1. الجزء الملون
        Container(
          height: 420.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: AppStyles.kMainGradient,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 100.h, left: 24.w, right: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitleColumn(title: title, subtitle: subtitle),
                SizedBox(width: 16.w),
                HeaderCircleButton(
                  icon: FontAwesomeIcons.chevronRight,
                  onTap: onBackTap ?? () => GoRouter.of(context).pop(),
                ),
              ],
            ),
          ),
        ),

        // 2. الجزء العائم
        Positioned(
          bottom: -55.h,
          left: 24.w,
          right: 24.w,
          child: floatingWidget,
        ),
      ],
    );
  }
}
