import 'package:bengo_app/Features/Home/presentation/views/widgets/show_more_stat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowMoreStatsRow extends StatelessWidget {
  const ShowMoreStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: ShowMoreStatCard(
            title: 'متوسط السعر',
            value: '315',
            suffix: 'ج.م',
          ),
        ),
        SizedBox(width: 12.w),
        const Expanded(
          child: ShowMoreStatCard(
            title: 'إجمالي الكورسات',
            value: '8',
          ),
        ),
      ],
    );
  }
}