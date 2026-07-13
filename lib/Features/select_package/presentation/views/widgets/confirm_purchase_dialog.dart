import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmPurchaseDialog extends StatelessWidget {
  final String itemName;
  final String price;

  const ConfirmPurchaseDialog({
    super.key,
    required this.itemName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    List<String> titleParts = itemName.split('-');
    String firstPart = titleParts[0].trim();
    if (titleParts.length > 1) {
      firstPart += " -";
    }
    String secondPart = titleParts.length > 1 ? titleParts[1].trim() : "";

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 600.w,

        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 35.h),
              decoration: BoxDecoration(
                gradient: AppStyles.kSalaryHomeButton,

                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/images/cIcon.png",
                      width: 30.w,
                      height: 30.h,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "تأكيد الشراء",
                    style: Styles.textStyle20.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                children: [
                  Text(
                    "هل أنت متأكد من شراء هذا العنصر؟",
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xff4A5565),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.h),

                  Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F7FB),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey[200]!),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            gradient: AppStyles.kPriceButton,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            "$price ج.م",
                            style: Styles.textStyle12.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                firstPart,
                                style: Styles.textStyle18.copyWith(
                                  color: const Color(0xff272323),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (secondPart.isNotEmpty)
                                Text(
                                  secondPart,
                                  style: Styles.textStyle18.copyWith(
                                    color: const Color(0xff272323),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              const SizedBox(height: 4),
                              Text(
                                "مذكرة",
                                style: Styles.textStyle14.copyWith(
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  // زر شراء الآن
                  Container(
                    width: double.infinity,
                    height: 100.h,
                    decoration: BoxDecoration(
                      gradient: AppStyles.kSalaryHomeButton,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "شراء الآن",
                        style: Styles.textStyle18.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
