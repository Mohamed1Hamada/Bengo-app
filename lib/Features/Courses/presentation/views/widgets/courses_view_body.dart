import 'package:bengo_app/Features/Courses/presentation/views/widgets/courses_list_view.dart';
import 'package:bengo_app/Features/Courses/presentation/views/widgets/courses_status_row.dart';
import 'package:bengo_app/Features/Home/data/models/custom_course_card_model.dart';
import 'package:bengo_app/core/utils/widget/custom_title_result_header.dart';
import 'package:bengo_app/core/utils/asstes.dart';
import 'package:bengo_app/core/utils/widget/custom_app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoursesViewBody extends StatelessWidget {
  const CoursesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppHeader(
          title: 'كورساتي',
          subtitle: ' كورس مسجل 8',
          floatingWidget: CoursesStatsRow(),
        ),
        SizedBox(height: 90.h),
        const CustomTitleResultHeader(title: 'استمر في التعلم'),

        SizedBox(height: 32.h),
        Expanded(
          child: CustomCourseListView(
            courses: [
              CustomCourseCardModel(
                isPaid: false,
                title: 'محاسبة مالية',
                category: 'الفرقة الأولى',
                image: AssetsData.financialAccountingCover,
                progress: 0.4,
                availableText: '10 متاح من 25',
              ),
              CustomCourseCardModel(
                isPaid: true,
                title: 'محاسبة تكاليف',
                category: 'الفرقة الثانية',
                image: AssetsData.financialAccountingCover,
                isCompleted: true,
              ),
              CustomCourseCardModel(
                isPaid: true,
                title: 'محاسبة تكاليف',
                category: 'الفرقة الثانية',
                image: AssetsData.financialAccountingCover,
                progress: .5,
                availableText: '10 متاح من 25',
              ),
              CustomCourseCardModel(
                isPaid: true,
                title: 'محاسبة تكاليف',
                category: 'الفرقة الثانية',
                image: AssetsData.financialAccountingCover,
                progress: .8,
                availableText: '10 متاح من 25',
              ),
              CustomCourseCardModel(
                isPaid: true,
                title: 'محاسبة تكاليف',
                category: 'الفرقة الثانية',
                image: AssetsData.financialAccountingCover,
                progress: .2,
                availableText: '10 متاح من 25',
              ),
              CustomCourseCardModel(
                isPaid: true,
                title: 'محاسبة تكاليف',
                category: 'الفرقة الثانية',
                image: AssetsData.financialAccountingCover,
                isCompleted: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
