import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookmarkCircleButton extends StatelessWidget {
  const BookmarkCircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: AppStyles.kSalaryHomeButton,
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 14,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: const Icon(
        Icons.bookmark_border_rounded,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
