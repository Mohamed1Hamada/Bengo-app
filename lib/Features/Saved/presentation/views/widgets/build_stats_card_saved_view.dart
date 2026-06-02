import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BuildStatCardSavedView extends StatelessWidget {
  const BuildStatCardSavedView({
    super.key,
    required this.title,
    required this.value,
    required this.sub,
    required this.color,
  });

  final String title;
  final String value;
  final String sub;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 100,

        padding: const EdgeInsets.all(15),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(15),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Text(
              title,

              style: Styles.textStyle12.copyWith(
                color: Color(0xff272323).withOpacity(0.7),

                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              value,

              style: Styles.textStyle24.copyWith(
                fontWeight: FontWeight.bold,

                color: color,
              ),
            ),

            if (sub.isNotEmpty)
              Text(
                sub,

                style: Styles.textStyle12.copyWith(
                  color: Color(0xff272323).withOpacity(0.7),

                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
