import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessPurchaseDialog extends StatelessWidget {
  final String itemName;

  const SuccessPurchaseDialog({super.key, required this.itemName});

  @override
  Widget build(BuildContext context) {
    // تطبيق مبدأ الشرطة لضمان تنسيق الاسم في شاشة النجاح أيضاً
    List<String> titleParts = itemName.split('-');
    String firstPart = titleParts[0].trim();
    if (titleParts.length > 1) {
      firstPart += " -";
    }
    String secondPart = titleParts.length > 1 ? titleParts[1].trim() : "";

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 520.w,
        // 1. أزلنا الـ Padding من هنا لكي يملأ الهيدر الشاشة
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
                // الحواف الدائرية من الأعلى فقط لتندمج مع الديالوج
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Color(0xFF2B4EA2),
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "تم الشراء بنجاح! 🎉",
                    style: Styles.textStyle18.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // 3. نضع باقي المحتوى داخل Padding مستقل
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F7FB),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey[200]!),
                    ),
                    child: Column(
                      children: [
                        Text(
                          firstPart, // السطر الأول مع الشرطة
                          style: Styles.textStyle16.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff272323),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        if (secondPart.isNotEmpty)
                          Text(
                            secondPart, // السطر الثاني
                            style: Styles.textStyle16.copyWith(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff272323),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        const SizedBox(height: 8),
                        Text(
                          "تم إضافة المذكرة إلى حسابك بنجاح ويمكنك الوصول إليه الآن",
                          style: Styles.textStyle12.copyWith(
                            color: Colors.grey[600],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  // تاغ خصم الكوينز
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F4FD),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey[200]!),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/images/cIcon.png",
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "تم خصم 25 كوينز",
                          style: Styles.textStyle16.copyWith(
                            color: const Color(0xFF2B4EA2),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: AppStyles.kSalaryHomeButton,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        "حسناً",
                        style: TextStyle(
                          fontSize: 16,
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
