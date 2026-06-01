import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
/// cancel_button.dart
///
/// زر إلغاء بتأثير outline
class CancelButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const CancelButton({super.key, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFE2E8F0)),
        ),
        child:  Center(
          child: Text(
            'إلغاء',
            style: Styles.textStyle16.copyWith(
              color: const Color(0xFF272323),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}