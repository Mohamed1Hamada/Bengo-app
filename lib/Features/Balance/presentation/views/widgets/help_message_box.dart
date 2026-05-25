import 'package:flutter/material.dart';

class StaticHelpMessageBox extends StatelessWidget {
  const StaticHelpMessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xffeef6ff),
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: const Color(0xffb9d8ff)),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '؟',
            style: TextStyle(
              color: Color(0xffe8bd38),
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              'يمكنك الحصول على كود الشحن من خلال التواصل مع الدعم الفني أو من خلال المنافذ المعتمدة',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xff2457d4),
                height: 1.55,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}