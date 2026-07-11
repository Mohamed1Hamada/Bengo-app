import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchResultsHeader extends StatelessWidget {
  const SearchResultsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "نتائج البحث",
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo',
                color: const Color(0xFF272323),
              ),
            ),
            SizedBox(height: 8.h),

            // تعديل النص ليحتوي على ألوان مختلفة
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'تم العثور على ',
                    style: Styles.textStyle16.copyWith(
                      color: const Color(0xFF9E9E9E),
                      fontFamily: 'Cairo',
                    ),
                  ),
                  TextSpan(
                    text: '6', // الرقم المراد تلوينه
                    style: Styles.textStyle18.copyWith(
                      color: const Color(0xFF2B4EA2),
                      fontFamily: 'Cairo',
                    ),
                  ),
                  TextSpan(
                    text: ' كورس ',
                    style: Styles.textStyle16.copyWith(
                      color: const Color(0xFF9E9E9E),
                      fontFamily: 'Cairo',
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}
