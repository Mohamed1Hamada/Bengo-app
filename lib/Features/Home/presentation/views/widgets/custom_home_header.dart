import 'package:bengo_app/core/utlis/app_router.dart';
import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:bengo_app/core/utlis/widget/custom_balance_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 60.h,
        bottom: 20.h,
        right: 20.w,
        left: 20.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end, // النصوص محاذاتها لليمين
        children: [
          Row(
            children: [
               CustomBalanceCard(balance: '416', onTap: () { 
                 GoRouter.of(context).push(AppRouter.kBalanceTopUpSuccess);
               },),
              SizedBox(width: 30.w),

              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  AsstesData.notificationIcon,
                  color: Colors.black,
                  width: 60.w,
                  height: 60.h,
                ),
              ),

              const Spacer(),

              CircleAvatar(
                radius: 60.r,
                backgroundImage: const AssetImage(AsstesData.homeHeaderIcon),
              ),
            ],
          ),

          SizedBox(height: 24.h),

          // نصوص الترحيب
          Text(
            "مرحباً ، محمد",
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.w800,
              color: const Color(0xFF272323),
              fontFamily: 'Cairo',
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            "ماذا تريد أن تتعلم؟",
            style: Styles.textStyle16.copyWith(
              color: Colors.grey,
              fontFamily: 'Cairo',
            ),
          ),
        ],
      ),
    );
  }
}
