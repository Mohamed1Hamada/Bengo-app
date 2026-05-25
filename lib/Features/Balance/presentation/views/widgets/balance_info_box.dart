import 'package:flutter/material.dart';

class StaticBalanceInfoBox extends StatelessWidget {
  const StaticBalanceInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xfff8f9fb),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xffe1e4ea)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'رصيدك الحالي',
            style: TextStyle(
              color: Color(0xff9b9aa3),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'جنيه',
                style: TextStyle(
                  color: Color(0xffb72c95),
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(width: 6),
              Text(
                '416',
                style: TextStyle(
                  color: Color(0xff28262d),
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  height: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}