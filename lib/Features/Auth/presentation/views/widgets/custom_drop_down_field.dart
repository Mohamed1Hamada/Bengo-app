import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownField extends StatelessWidget {
  final String label;
  final String hint;
  final List<String> items;

  const CustomDropdownField({
    super.key,
    required this.label,
    required this.hint,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end, // العناوين على اليمين
      children: [
        // الـ Label فوق الحقل
        Padding(
          padding: EdgeInsets.only(right: 8.w, bottom: 8.h),
          child: Text(
            label,
            style: Styles.textStyle16.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'Cairo',
            ),
          ),
        ),

        // جسم الـ Dropdown
        Container(
          width: double.infinity,
          height: 90.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.12),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: DropdownButtonHideUnderline(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: DropdownButton<String>(
                isExpanded: true,
                hint: Text(
                  hint,
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'Cairo',
                  ),
                ),
                // شكل السهم زي الفيجما
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                ),
                // لون الخلفية لما تفتح القائمة (نفس درجة البنفسجي في التصميم)
                dropdownColor: const Color(0xFF6A1B9A),
                borderRadius: BorderRadius.circular(15.r),
                items: items.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  // هنا هيتحط اللوجيك بعدين
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
