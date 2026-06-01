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
          borderRadius: BorderRadius.circular(26),
          border: Border.all(color: const Color(0xFFE2E8F0)),
        ),
        child: const Center(
          child: Text(
            'إلغاء',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF334155),
            ),
          ),
        ),
      ),
    );
  }
}