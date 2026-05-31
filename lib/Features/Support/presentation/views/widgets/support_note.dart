import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class SupportNote extends StatelessWidget {
  const SupportNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xffeef7ff),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xffb9ddff)),
      ),
      child:  Text(
        '💡 للمساعدة الفورية، يفضل التواصل عبر واتساب أو الاتصال المباشر خلال ساعات العمل',
        textAlign: TextAlign.center,
        style: Styles.textStyle12.copyWith(
          color: Color(0xff193CB8),
          height: 1.7,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
