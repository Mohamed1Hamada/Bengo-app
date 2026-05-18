import 'package:bengo_app/Features/Auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:bengo_app/Features/Auth/presentation/views/widgets/custom_drop_down_field.dart';
import 'package:bengo_app/core/utlis/app_router.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:bengo_app/core/utlis/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CompleteProfileViewBody extends StatelessWidget {
  const CompleteProfileViewBody({super.key});

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
             
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),

              SizedBox(height: 30.h),
              Text(
                "أكمل ملفك الشخصي",
                style: Styles.textStyle32.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "ساعدنا لنقدم لك أفضل تجربة تعليمية",
                style: Styles.textStyle14.copyWith(color: Colors.white70),
              ),

              SizedBox(height: 30.h),

              // القوائم المنسدلة
              const CustomDropdownField(
                label: "الجامعة",
                hint: "اختر الجامعة",
                items: ["جامعة القاهرة", "جامعة عين شمس"],
              ),
              SizedBox(height: 16.h),
              const CustomDropdownField(
                label: "الكلية",
                hint: "اختر الكلية",
                items: ["هندسة", "تجارة", "حاسبات"],
              ),
              SizedBox(height: 16.h),
              const CustomDropdownField(
                label: "الفرقة",
                hint: "اختر الفرقة",
                items: ["الأولى", "الثانية", "الثالثة", "الرابعة"],
              ),
              SizedBox(height: 16.h),
              const CustomDropdownField(
                label: "الترم",
                hint: "اختر الترم",
                items: ["الترم الأول", "الترم الثاني"],
              ),

              SizedBox(height: 16.h),

              CustomTextField(label: "رقم الهاتف", hint: "ادخل رقم الهاتف"),

              SizedBox(height: 40.h),

            
              CustomAuthButton(
                text: "متابعة",
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kLoginView);
                },
              ),

              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
