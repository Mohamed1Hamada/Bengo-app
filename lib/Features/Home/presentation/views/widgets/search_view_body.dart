import 'package:bengo_app/Features/Home/data/models/custom_course_card_model.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/custom_search_card.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/search_app_header.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/search_results_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // الهيدر العائم اللي خلصناه
        const SearchAppHeader(),

        // مسافة تعويضية لأن الحقل خارج لبره بـ 30 بكسل
        SizedBox(height: 90.h),
        const SearchResultsHeader(),
        SizedBox(height: 32.h),
        CustomSearchCard(
          model: CustomCourseCardModel(
            title: 'محاسبه ماليه',
            category: 'محاسبه',
            level: 'مبتدئ',
            price: '500 و.ج',
            image: 'assets/images/Image (محاسبة مالية).png',
          ),
        ),
      ],
    );
  }
}
