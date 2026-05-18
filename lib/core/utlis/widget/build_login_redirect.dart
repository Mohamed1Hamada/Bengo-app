// ميثود بسيطة للتحويل لصفحة اللوجن

import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BuildLoginRedirect extends StatelessWidget {
  const BuildLoginRedirect({
    super.key,
    required this.context,
    required this.text,
    required this.onTap,
  });

  final BuildContext context;
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            style: Styles.textStyle14.copyWith(
              color: Colors.white70,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white70,
            ),
          ),
        ),
        Text(
          " لديك حساب بالفعل؟ ",
          style: Styles.textStyle14.copyWith(color: Colors.white70),
        ),
      ],
    );
  }
}
