import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesListView extends StatefulWidget {
  // بنضيف الـ Callback ده
  final Function(int index) onCategoryChanged;

  const CategoriesListView({super.key, required this.onCategoryChanged});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  final List<String> categories = ["الكل", "محاسبة", "إدارة الأعمال", "مبادئ الإحصاء"];
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        reverse: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              // بننادي الدالة اللي بتبلغ الصفحة برقم القسم الجديد
              widget.onCategoryChanged(index);
            },
            child: Container(
              margin: EdgeInsets.only(left: 15.w),
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                color: selectedIndex == index ? const Color(0xff2A2575) : Colors.transparent,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: Styles.textStyle16.copyWith(
                    color: selectedIndex == index ? Colors.white : const Color(0xFF9E9E9E),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}