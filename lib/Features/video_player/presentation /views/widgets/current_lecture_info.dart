import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CurrentLectureInfo extends StatelessWidget {
  const CurrentLectureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 39, left: 25),
          child: Text(
            'المحاضرة الأولى - مقدمة\nفي المحاسبة',
            textAlign: TextAlign.right,
            style: Styles.textStyle20.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              height: 1.42,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(right: 39, left: 25),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            textDirection: TextDirection.rtl,
            children: [
              Text(
                '45:30',
                style: Styles.textStyle16.copyWith(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.check_circle_outline_rounded,
                color: Colors.green,
                size: 20,
              ),
              const SizedBox(width: 5),
              Text(
                'تم الإنتهاء',
                style: Styles.textStyle16.copyWith(
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
