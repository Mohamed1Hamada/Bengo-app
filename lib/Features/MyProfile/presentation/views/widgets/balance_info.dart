import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BalanceInfo extends StatelessWidget {
  final int balance;

  const BalanceInfo({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Label
        Row(
          children: [
            Text(
              'رصيدك الحالي',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w400,
                color: Color(0xff737373),
              ),
            ),
            SizedBox(width: 6),
            Image.asset(AssetsData.profileIcon),
          ],
        ),
        const SizedBox(height: 4),

        // Value
        Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffF7B731),
                  Color(0xffFDA085)
                ]),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                'ج.م',
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
            const SizedBox(width: 6),
            Text(
              balance.toString(),
              style:  Styles.textStyle32.copyWith(
                fontWeight: FontWeight.w700,
                color: Color(0xff272323),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
