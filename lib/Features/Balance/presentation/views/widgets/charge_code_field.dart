import 'package:flutter/material.dart';

class StaticChargeCodeField extends StatelessWidget {
  const StaticChargeCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          'كود الشحن',
          style: TextStyle(
            color: Color(0xff2d2b30),
            fontSize: 16,
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
          child: const Text(
            'أدخل كود الشحن',
            style: TextStyle(
              color: Color(0xff9b9aa3),
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}