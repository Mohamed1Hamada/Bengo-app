import 'package:flutter/material.dart';

import 'course_resource_card.dart';
import 'course_resource_ui_model.dart';

class CourseResourcesList extends StatelessWidget {
  const CourseResourcesList({
    super.key,
    required this.items,
    this.onItemTap,
    this.onPriceTap,
  });

  final List<CourseResourceUiModel> items;
  final ValueChanged<CourseResourceUiModel>? onItemTap;
  final ValueChanged<CourseResourceUiModel>? onPriceTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int index = 0; index < items.length; index++) ...[
          CourseResourceCard(
            item: items[index],
            onTap: () {
              onItemTap?.call(items[index]);
            },
            onPriceTap: () {
              onPriceTap?.call(items[index]);
            },
          ),
          if (index != items.length - 1) const SizedBox(height: 12),
        ],
      ],
    );
  }
}
