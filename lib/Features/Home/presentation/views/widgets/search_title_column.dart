import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class SearchTitleColumn extends StatelessWidget {
  const SearchTitleColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'البحث',
          textAlign: TextAlign.right,
          style: Styles.textStyle30.copyWith(
            color: Colors.white,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w800,
            height: 1.2,
          ),
        ),
        Text(
          'إبحث عن الكورس المناسب لك',
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