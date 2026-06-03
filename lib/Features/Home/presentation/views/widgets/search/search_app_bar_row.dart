import 'package:bengo_app/Features/Home/presentation/views/widgets/header_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utlis/widget/custom_title_column.dart';

class SearchAppBarRow extends StatelessWidget {
  const SearchAppBarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. زر الفلتر (يسار)
        HeaderCircleButton(icon: FontAwesomeIcons.sliders, onTap: () {}),

        const Spacer(),

        // 2. العنوان والوصف
        const CustomTitleColumn(
          title: 'البحث',
          subtitle: 'إبحث عن الكورس المناسب لك',
        ),

        SizedBox(width: 16.w),

        // 3. زر الرجوع (يمين)
        HeaderCircleButton(
          icon: FontAwesomeIcons.chevronRight,
          onTap: () {
            GoRouter.of(context).pop();
          },
        ),
      ],
    );
  }
}
