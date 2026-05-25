import 'package:flutter/material.dart';

class StaticTopUpButton extends StatelessWidget {
  const StaticTopUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff1d2f8a),
            Color(0xffb32389),
            Color(0xffdb2231),
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3d49287e),
            blurRadius: 26,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: const Text(
        'شحن الرصيد',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}