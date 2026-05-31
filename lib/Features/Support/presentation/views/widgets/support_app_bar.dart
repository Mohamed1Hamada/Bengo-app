import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class SupportAppBar extends StatelessWidget {
  const SupportAppBar({super.key, required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: Row(
        children: [
          IconButton(
            onPressed: onBack,
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: Color(0xff111827),
            ),
          ),
          Text(
            'الدعم الفني',
            style: Styles.textStyle20.copyWith(
              color: const Color(0xff000000),
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
