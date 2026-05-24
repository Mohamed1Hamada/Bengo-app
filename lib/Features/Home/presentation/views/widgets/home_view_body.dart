import 'package:bengo_app/Features/Home/presentation/views/search_view.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/build_category_content.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/categories_list_view.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/courses_header.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/custom_home_header.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/home_search_field.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/promo_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  // 1. المتغير الذي يتحكم في المحتوى المعروض
  int selectedCategoryIndex = 1; // القيمة الافتراضية "محاسبة"

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            const CustomHomeHeader(),
            SizedBox(height: 15.h),
            HomeSearchField(
              readOnly: true, // يمنع الكتابة هنا
              onTap: () {
               
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchView()),
                );
              },
            ),
            SizedBox(height: 25.h),
            const PromoBanner(),
            SizedBox(height: 25.h),
            const CoursesHeader(),
            SizedBox(height: 10.h),

            // 2. شريط الأقسام مع تمرير دالة التغيير
            CategoriesListView(
              onCategoryChanged: (index) {
                setState(() {
                  selectedCategoryIndex = index; // تحديث الحالة
                });
              },
            ),

            SizedBox(height: 20.h),

            // 3. عرض المحتوى بناءً على الاختيار
            BuildCategoryContent(selectedCategoryIndex: selectedCategoryIndex),

            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }

  // دالة برمجية لتبديل الـ Widgets
}
