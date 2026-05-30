import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class StaticWrittenChargeCodeField extends StatelessWidget {
  const StaticWrittenChargeCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
         Text(
          'كود الشحن',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff272323),
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 48,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xfff6f6f8),
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: const Color(0xffeef0f4)),
          ),
          child:  Text(
            'dfdsf343fdfdsf',
            style: Styles.textStyle16.copyWith(
              color: const Color(0xff717182),
            ),
          ),
        ),
      ],
    );
  }
}