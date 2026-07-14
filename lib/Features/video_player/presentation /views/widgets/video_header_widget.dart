import 'package:bengo_app/core/utils/app_router.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class VideoHeaderWidget extends StatelessWidget {
  const VideoHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,

        padding: EdgeInsets.fromLTRB(20.w, 100.h, 20.w, 20.h),
        decoration: BoxDecoration(
          color: const Color(0xFFC62C40),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.r)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.chevron_left, color: Colors.white),
                  onPressed: () =>
                      GoRouter.of(context).push(AppRouter.kHomeView),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "محاسبة مالية",
                      style: Styles.textStyle28.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "8 محاضرات",
                      style: Styles.textStyle16.copyWith(
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
