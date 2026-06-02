import 'package:bengo_app/Features/Home/presentation/views/widgets/header_circle_button.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/custom_title_column.dart';
import 'package:bengo_app/Features/Saved/presentation/views/widgets/build_stats_card_saved_view.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SavesHeader extends StatelessWidget {
  final int videoCount;
  final String totalTime;

  const SavesHeader({
    super.key,
    required this.videoCount,
    required this.totalTime,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // 1. الجزء الملون
        Container(
          height: 400.h,
          padding: EdgeInsets.only(top: 50.h, left: 24.w, right: 24.w),
          decoration: const BoxDecoration(
            gradient: AppStyles.kCustomGradient,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),

          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // زر الرجوع
                CustomTitleColumn(
                  title: 'المحفوظات',
                  subtitle: '$videoCount فيديو محفوظ',
                ),
                SizedBox(width: 12.w),
                HeaderCircleButton(
                  icon: FontAwesomeIcons.chevronRight,
                  onTap: () => GoRouter.of(context).pop(),
                ),
              ],
            ),
          ),
        ),

        // 2. البطاقات العائمة
        Positioned(
          bottom: -55.h,
          left: 24.w,
          right: 24.w,
          child: Row(
            children: [
              BuildStatCardSavedView(
                title: "إجمالي الوقت",
                value: totalTime,
                sub: "ساعات",
                color: Color(0xffD62828),
              ),
              SizedBox(width: 10.w),
              BuildStatCardSavedView(
                title: "إجمالي الفيديوهات",
                value: "$videoCount",
                sub: "",
                color: Color(0xff2B4EA2),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
