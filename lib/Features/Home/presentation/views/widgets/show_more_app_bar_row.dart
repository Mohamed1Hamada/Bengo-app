import 'package:bengo_app/Features/Home/presentation/views/widgets/header_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'custom_title_column.dart';

class ShowMoreAppBarRow extends StatelessWidget {
  const ShowMoreAppBarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        const CustomTitleColumn(title: 'الكل', subtitle: ' كورس متاح 8'),

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
