import 'package:bengo_app/Features/Home/data/models/custom_course_card_model.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildLinearProgressIndicator extends StatelessWidget {
  const BuildLinearProgressIndicator({super.key, required this.model});

  final CustomCourseCardModel model;

  @override
  Widget build(BuildContext context) {
    bool isCompleted = model.isCompleted == true;

    return isCompleted
        ? ShaderMask(
            shaderCallback: (Rect bounds) =>
                AppStyles.kLinearProgressIndicator.createShader(bounds),
            child: _buildIndicator(Colors.white),
          )
        : _buildIndicator(Colors.blue);
  }

  Widget _buildIndicator(Color color) {
    return LinearProgressIndicator(
      value: model.progress ?? 1.0,
      backgroundColor: Colors.grey[200],
      valueColor: AlwaysStoppedAnimation<Color>(color),
      minHeight: 8,
      borderRadius: BorderRadius.circular(3),
    );
  }
}
