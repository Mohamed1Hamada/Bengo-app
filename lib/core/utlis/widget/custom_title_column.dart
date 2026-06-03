import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomTitleColumn extends StatelessWidget {
  const CustomTitleColumn({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          textAlign: TextAlign.right,
          style: Styles.textStyle30.copyWith(
            color: Colors.white,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w800,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          textAlign: TextAlign.right,
          style: Styles.textStyle14.copyWith(
            color: Colors.white.withOpacity(0.9),
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}