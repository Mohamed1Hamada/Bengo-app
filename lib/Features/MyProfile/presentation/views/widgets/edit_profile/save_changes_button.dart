import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';


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
          gradient: AppStyles.kSalaryHomeButton,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF000000).withOpacity(0.2),
              blurRadius: 16,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Center(
          child: Text(
            'حفظ التعديلات',
            style: Styles.textStyle16.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
