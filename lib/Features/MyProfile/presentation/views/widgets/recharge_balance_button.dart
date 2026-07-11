import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RechargeBalanceButton extends StatelessWidget {
  const RechargeBalanceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppStyles.kCustomGradient,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          'شحن الرصيد',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w800,
            color: Color(0xffFFFFFF),
            fontFamily: 'Cairo',
          ),
        ),
      ),
    );
  }
}
