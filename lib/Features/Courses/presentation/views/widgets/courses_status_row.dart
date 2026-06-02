import 'package:bengo_app/Features/Home/presentation/views/widgets/show_more_stat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoursesStatsRow extends StatelessWidget {
  const CoursesStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomStatCard(
            title: 'دروس مكتملة',
            value: '42',
           
          ),
        ),
        SizedBox(width: 12.w),
        const Expanded(
          child: CustomStatCard(
            title: ' اجمالي الدروس',
            value: '80',
          ),
        ),
      ],
    );
  }
}