import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class StaticSuccessMessageBox extends StatelessWidget {
  const StaticSuccessMessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          color: const Color(0xffeffdf3),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xffb7f3ca)),
        ),
        child: Row(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.check_circle_outline_rounded,
                  color: Color(0xff04a13b),
                  size: 26,
                ),
              ],
            ),
            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'تم الشحن بنجاح! ✨',
                    style: Styles.textStyle16.copyWith(
                      color: const Color(0xff016630),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'تم إضافة الرصيد إلى حسابك',
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xff00A63E),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
