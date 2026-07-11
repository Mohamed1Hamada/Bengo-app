import 'package:bengo_app/Features/Home/presentation/views/widgets/search/search_app_header.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/search/search_list_view.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/search/search_results_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchAppHeader(),
        SizedBox(height: 90.h),
        const SearchResultsHeader(),
        SizedBox(height: 32.h),
        Expanded(child: SearchListView()),
      ],
    );
  }
}
