import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseContentTabs extends StatelessWidget {
  const CourseContentTabs({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            CourseContentTabItem(
              title: 'الفيديوهات',
              imagePath: 'assets/images/tapIcon.png',
              isSelected: selectedIndex == 0,
              onTap: () => onTabChanged(0),
            ),

            const SizedBox(width: 10),

            CourseContentTabItem(
              title: 'المذكرات',
              imagePath: 'assets/images/tapIcon2.png',
              isSelected: selectedIndex == 1,
              onTap: () => onTabChanged(1),
            ),

            const SizedBox(width: 10),

            CourseContentTabItem(
              title: 'الامتحانات',
              imagePath: 'assets/images/tapIcon3.png',
              isSelected: selectedIndex == 2,
              onTap: () => onTabChanged(2),
            ),

            const SizedBox(width: 10),

            CourseContentTabItem(
              title: 'ملاحظات',
              imagePath: 'assets/images/tapIcon4.png',
              isSelected: selectedIndex == 3,
              onTap: () => onTabChanged(3),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseContentTabItem extends StatelessWidget {
  const CourseContentTabItem({
    super.key,
    required this.title,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final Color selectedTextAndIconColor = Colors.white;
    final Color unSelectedTextAndIconColor = const Color(0xFF272323);

    final Color unSelectedButtonColor = const Color(0xFFF0F4FD);

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          width: 210.w,
          height: 170.h,
          decoration: BoxDecoration(
            color: isSelected ? null : unSelectedButtonColor,
            gradient: isSelected ? AppStyles.kMainGradient : null,
            borderRadius: BorderRadius.circular(16),
            boxShadow: isSelected
                ? const [
                    BoxShadow(
                      color: Color(0x22000000),
                      blurRadius: 10,
                      offset: Offset(0, 6),
                    ),
                  ]
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: isSelected ? 22 : 22,
                height: isSelected ? 28 : 25,
                fit: BoxFit.contain,

                /// لو الصور icons لون واحد وشفافة، السطر ده هيغير لونها
                color: isSelected
                    ? selectedTextAndIconColor
                    : unSelectedTextAndIconColor,
              ),

              const SizedBox(height: 5),

              Text(
                title,
                style: Styles.textStyle16.copyWith(
                  color: isSelected
                      ? selectedTextAndIconColor
                      : unSelectedTextAndIconColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
