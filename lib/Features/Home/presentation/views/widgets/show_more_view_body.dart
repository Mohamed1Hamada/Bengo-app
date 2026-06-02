import 'package:bengo_app/Features/Home/presentation/views/widgets/show_more_stats_row.dart';
import 'package:bengo_app/core/utlis/widget/custom_app_header.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/show_more_list_view.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/custom_title_result_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowMoreViewBody extends StatelessWidget {
  const ShowMoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppHeader(
          title: 'الكل',
          subtitle: ' كورس متاح 8',
          floatingWidget: ShowMoreStatsRow(),
        ),
        SizedBox(height: 90.h),
        const CustomTitleResultHeader(title: 'جميع الكورسات'),
        SizedBox(height: 32.h),
        const Expanded(child: ShowMoreListView()),
      ],
    );
  }
}
