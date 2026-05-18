import 'package:bengo_app/Features/Auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:bengo_app/core/utlis/app_router.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:bengo_app/core/utlis/widget/build_divider.dart';
import 'package:bengo_app/core/utlis/widget/build_login_redirect.dart';
import 'package:bengo_app/core/utlis/widget/custom_google_button.dart';
import 'package:bengo_app/core/utlis/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(gradient: AppStyles.kMainGradient),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 180.h),

              Text(
                "إنشاء حساب جديد",
                style: Styles.textStyle30.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Cairo',
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "الان BENGO  انضم الي ",
                style: Styles.textStyle16.copyWith(color: Colors.white70),
              ),

              SizedBox(height: 30.h),

              // 2. زر جوجل (الشفاف - CustomButton)
              CustomGoogleButton(text: ' Google التسجيل بـ '),

              SizedBox(height: 30.h),
              const BuildDivider(),
              SizedBox(height: 20.h),

              // 3. الحقول (CustomTextField)
              CustomTextField(label: "الاسم باللغة العربية", hint: "ادخل اسمك"),
              SizedBox(height: 16.h),

              CustomTextField(
                label: "البريد الإلكتروني",
                hint: "ادخل البريد الإلكتروني",
              ),
              SizedBox(height: 16.h),

              CustomTextField(
                label: "كلمة السر",
                hint: "ادخل كلمة السر",
                isPassword: true,
              ),
              SizedBox(height: 16.h),

              CustomTextField(
                label: "تأكيد كلمة السر",
                hint: "أعد إدخال كلمة السر",
                isPassword: true,
              ),

              SizedBox(height: 30.h),
              CustomAuthButton(text: "إنشاء حساب"),

              SizedBox(height: 25.h),

              // 5. هل لديك حساب؟
              BuildLoginRedirect(
                context: context,
                text: 'تسجيل الدخول',
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kLoginView);
                },
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
