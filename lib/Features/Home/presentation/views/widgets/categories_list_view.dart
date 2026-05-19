import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  // القائمة من الديزاين
  final List<String> categories = [
    "الكل",
    "محاسبة",
    "إدارة الأعمال",
    "مبادئ الإحصاء",
  ];

  // المتغير ده عشان نحدد مين اللي "منور" (محاسبة هي اللي في الصورة)
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        reverse: true, // عشان يبدأ من اليمين للشمال زي العربي
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index; // تغيير القسم المختار عند الضغط
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 15.w), // مسافة بين كل كلمة والتانية
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? const Color(0xff2A2575)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: Styles.textStyle16.copyWith(
                    color: selectedIndex == index
                        ? Colors.white
                        : const Color(0xFF9E9E9E),
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
