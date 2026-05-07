import 'package:flutter/material.dart';

enum OnBoardActionButtonType { primary, secondary }

class OnBoardActionButton extends StatelessWidget {
  const OnBoardActionButton({
    super.key,
    required this.text,
    required this.type,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.fontSize,
    this.onPressed,
  });

  final String text;
  final OnBoardActionButtonType type;
  final double width;
  final double height;
  final double borderRadius;
  final double fontSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isPrimary = type == OnBoardActionButtonType.primary;

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          elevation: isPrimary ? 8 : 0,
          shadowColor: Colors.black.withValues(alpha: 0.18),
          backgroundColor: isPrimary
              ? Colors.white
              : Colors.white.withValues(alpha: 0.34),
          foregroundColor: isPrimary ? const Color(0xFF242424) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            color: isPrimary ? const Color(0xFF242424) : Colors.white,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
