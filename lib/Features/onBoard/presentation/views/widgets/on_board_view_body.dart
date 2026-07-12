import 'package:bengo_app/core/utils/app_router.dart';
import 'package:bengo_app/core/utils/widget/custom_onBoard_button.dart';
import 'package:bengo_app/Features/onBoard/presentation/views/widgets/on_board_background_curves.dart';
import 'package:bengo_app/Features/onBoard/presentation/views/widgets/on_board_illustration.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardViewBody extends StatelessWidget {
  const OnBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(gradient: AppStyles.kMainGradient),
      child: Stack(
        children: [
          const OnBoardBackgroundCurves(),

          Stack(
            alignment: Alignment.topCenter,
            children: [
              // الإليستريشن
              Positioned(
                top: 88.h,
                child: SizedBox(
                  width: 520.w,
                  height: 520.w,
                  child: const OnBoardIllustration(),
                ),
              ),

              // العنوان + الوصف + الأزرار
              Positioned(
                top: 735.h,
                left: 24.w,
                right: 24.w,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ), // مسافة صغيرة بين الإليستريشن والنص
                    Text(
                      'BENGO',
                      style: AppStyles.onBoardTitleStyle.copyWith(
                        fontSize: 80.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'منصتك التعليمية',
                      style: AppStyles.onBoardSubtitleStyle.copyWith(
                        fontSize: 80.sp,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(height: 100.h), // المسافة بين النص والزر الأول
                    // الأزرار
                    CustomOnBoardButton(
                      text: 'تسجيل دخول',
                      isPrimary: true,
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kLoginView);
                      },
                    ),

                    SizedBox(height: 50.h),

                    CustomOnBoardButton(
                      text: 'إنشاء حساب',
                      isPrimary: false,
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kSignUpView);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
