import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class SavesHeader extends StatelessWidget {
  final int videoCount;

  final String totalTime;

  const SavesHeader({
    super.key,

    required this.videoCount,

    required this.totalTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: const BoxDecoration(
        gradient: AppStyles.kCustomGradient,

        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),

          bottomRight: Radius.circular(30),
        ),
      ),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              Text(
                "المحفوظات",

                style: Styles.textStyle28.copyWith(
                  fontWeight: FontWeight.bold,

                  color: Colors.white,
                ),
              ),

              IconButton(
                onPressed: () {},

                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,

                  color: Colors.white,
                ),
              ),
            ],
          ),

          Text(
            "$videoCount فيديو محفوظ",

            style: Styles.textStyle14.copyWith(color: Colors.white70),
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              _buildStatCard("إجمالي الوقت", totalTime, "ساعات", Colors.red),

              const SizedBox(width: 10),

              _buildStatCard(
                "إجمالي الفيديوهات",

                "$videoCount",

                "",

                Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, String sub, Color color) {
    return Expanded(
      child: Container(
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

              style: Styles.textStyle18.copyWith(
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
