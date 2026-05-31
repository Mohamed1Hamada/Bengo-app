import 'package:bengo_app/Features/Home/presentation/views/widgets/show_more_app_bar_row.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/show_more_stats_row.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowMoreAppHeader extends StatelessWidget {
  const ShowMoreAppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    //    ارتفاع الجزء الملون فقط
    double headerHeight = 400.h; 

    return Stack(
      clipBehavior: Clip.none, //   عشان الحقل يخرج برا الحدود
      alignment: Alignment.center,
      children: [
        // 1. الجزء الملون (Gradient Box)
        Container(
          height: headerHeight,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: AppStyles.kMainGradient,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 60.h, left: 24.w, right: 24.w),
            child: const ShowMoreAppBarRow(), 
          ),
        ),

        // 2. حقل البحث العائم (Floating Search Field)
        Positioned(
          //    نص الحقل فوق ونص تحت (نص ارتفاع الحقل)
          bottom: -55.h, 
          left: 24.w,
          right: 24.w,
          child: const ShowMoreStatsRow(), // حقل البحث الأبيض
        ),
      ],
    );
  }
}