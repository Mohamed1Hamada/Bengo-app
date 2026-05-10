import 'package:bengo_app/Features/splash/presentation/views/widgets/build_logo_badge.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BuildLogoBadge(),
            SizedBox(height: 50.h),
            Text(
              'BENGO',
              style: AppStyles.splashTitleStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 28.h),
            Text(
              'منصتك الذكية للتعلّم والتطور',
              style: AppStyles.splashSubtitleStyle,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
