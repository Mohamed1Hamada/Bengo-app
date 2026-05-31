import 'package:bengo_app/Features/Home/presentation/views/widgets/show_more_app_header.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/show_more_list_view.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/show_more_results_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowMoreViewBody extends StatelessWidget {
  const ShowMoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ShowMoreAppHeader(),
        SizedBox(height: 90.h),
        const ShowMoreResultsHeader(),
        SizedBox(height: 32.h),
        const Expanded(child: ShowMoreListView()),
      ],
    );
  }
}
