import 'package:bengo_app/core/utlis/styles.dart';
import 'package:bengo_app/core/utlis/widget/custom_google_button.dart';
import 'package:bengo_app/core/utlis/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              SizedBox(
                width: double.infinity,
                height: 100.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Text(
                    "تسجيل دخول",
                    style: Styles.textStyle18.copyWith(
                      color: const Color(0xFFD32F2F),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40.h),
              _buildDivider(),
              SizedBox(height: 40.h),

              // زر جوجل المعدل
              CustomGoogleButton(),

              SizedBox(height: 40.h),

              Text(
                "ليس لديك حساب؟ إنشاء حساب جديد",
                style: Styles.textStyle14.copyWith(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
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

