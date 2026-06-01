import 'package:flutter/material.dart';
/// save_changes_button.dart
///
/// زر "حفظ التعديلات" بتدرج لوني
class SaveChangesButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const SaveChangesButton({super.key, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF5B21B6),
              Color(0xFF7C3AED),
              Color(0xFFC026D3),
            ],
          ),
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF7C3AED).withOpacity(0.3),
              blurRadius: 16,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'حفظ التعديلات',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}