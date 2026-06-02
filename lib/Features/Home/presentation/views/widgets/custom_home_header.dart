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
      padding: EdgeInsets.only(top: 50.h, bottom: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              CustomBalanceCard(balance: '416', onTap: () => context.push(AppRouter.kBalanceTopUpSuccess)),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
              SizedBox(width: 10.w),
              CircleAvatar(radius: 66.r, backgroundImage: const AssetImage(AssetsData.homeHeaderIcon)),
            ],
          ),
          SizedBox(height: 24.h),
          Text("مرحباً ، محمد", style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w800, color: const Color(0xFF272323))),
          Text("ماذا تريد أن تتعلم؟", style: Styles.textStyle16.copyWith(color: Colors.grey)),
        ],
      ),
    );
  }
}