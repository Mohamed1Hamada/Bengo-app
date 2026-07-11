import 'package:bengo_app/Features/Home/presentation/views/widgets/build_category_content.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/categories_list_view.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/courses_header.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/custom_home_header.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/home_search_field.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/promo_banner.dart';
import 'package:bengo_app/core/utils/app_router.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int selectedCategoryIndex = 1;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                const CustomHomeHeader(),
                HomeSearchField(
                  readOnly: true,
                  onTap: () => context.push(AppRouter.kSearchView),
                ),
                SizedBox(height: 120.h),
                const PromoBanner(),
                SizedBox(height: 36.h),
                const CoursesHeader(),
                SizedBox(height: 30.h),
                CategoriesListView(
                  onCategoryChanged: (index) =>
                      setState(() => selectedCategoryIndex = index),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),

        BuildCategoryContent(selectedCategoryIndex: selectedCategoryIndex),
      ],
    );
  }
}
