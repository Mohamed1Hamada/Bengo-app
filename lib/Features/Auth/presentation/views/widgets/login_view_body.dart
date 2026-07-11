import 'package:bengo_app/Features/Auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:bengo_app/core/utils/app_router.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:bengo_app/core/utils/widget/build_divider.dart';
import 'package:bengo_app/core/utils/widget/build_login_redirect.dart';
import 'package:bengo_app/core/utils/widget/custom_google_button.dart';
import 'package:bengo_app/core/utils/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(gradient: AppStyles.kMainGradient),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              SizedBox(height: 260.h),
              Text(
                "مرحباً بك",
                style: Styles.textStyle34.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Cairo',
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "سجل دخولك للمتابعة",
                style: Styles.textStyle16.copyWith(
                  color: Colors.white70,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: 60.h),

              const CustomTextField(
                label: "البريد الإلكتروني",
                hint: "ادخل البريد الإلكتروني",
              ),
              SizedBox(height: 20.h),
              const CustomTextField(
                label: "كلمة السر",
                hint: "ادخل كلمة السر",
                isPassword: true,
              ),

              SizedBox(height: 40.h),

              // زر تسجيل الدخول
              CustomAuthButton(
                text: "تسجيل الدخول",
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kMainLayoutView);
                },
              ),

              SizedBox(height: 40.h),
              BuildDivider(),
              SizedBox(height: 40.h),

              // زر جوجل المعدل
              CustomGoogleButton(text: ' Google تسجيل الدخول بـ '),

              SizedBox(height: 40.h),
              BuildLoginRedirect(
                context: context,
                text: 'إنشاء حساب جديد',
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kSignUpView);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
