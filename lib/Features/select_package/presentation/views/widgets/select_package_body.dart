import 'package:bengo_app/Features/select_package/presentation/views/widgets/purchase_option_tile.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectPackageBody extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onPackageSelected;

  const SelectPackageBody({
    super.key,
    required this.selectedIndex,
    required this.onPackageSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 20.h),

          // 2. الهيدر الملون
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 100.h),
            decoration: BoxDecoration(
              gradient: AppStyles.kSalaryHomeButton,
              borderRadius: BorderRadius.circular(25),
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
                  child: Center(
                    child: Image.asset(
                      "assets/images/cIcon.png",
                      width: 35.w,
                      height: 35.h,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Text(
                  "اختر ما تريد شراءه",
                  style: Styles.textStyle18.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            "اختر الباقة التي تناسبك",
            style: Styles.textStyle14.copyWith(color: Colors.grey[600]),
          ),
          SizedBox(height: 20.h),

          // 3. قائمة الباقات (نمرر الـ index والـ callback)
          PurchaseOptionTile(
            title: "الكورس كامل",
            description: "فيديوهات + مذكرات + اختبارات",
            price: "299",
            isSelected: selectedIndex == 0,
            onTap: () => onPackageSelected(0),
          ),
          PurchaseOptionTile(
            title: "الفيديوهات كاملة",
            description: "8 محاضرات فيديو",
            price: "418",
            isSelected: selectedIndex == 1,
            onTap: () => onPackageSelected(1),
          ),
          PurchaseOptionTile(
            title: "المذكرات كاملة",
            description: "8 مذكرات PDF",
            price: "273",
            isSelected: selectedIndex == 2,
            onTap: () => onPackageSelected(2),
          ),
          PurchaseOptionTile(
            title: "الاختبارات كاملة",
            description: "2 اختبارات",
            price: "35",
            isSelected: selectedIndex == 3,
            onTap: () => onPackageSelected(3),
          ),

          SizedBox(height: 25.h),

          // 4. زر الإلغاء
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Navigator.pop(context),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                side: BorderSide(color: Colors.grey[300]!),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.close, size: 18, color: Colors.black),
                  const SizedBox(width: 8),
                  const Text(
                    "إلغاء",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
