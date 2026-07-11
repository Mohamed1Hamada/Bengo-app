import 'package:bengo_app/core/utils/asstes.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HeroPanel extends StatelessWidget {
  const HeroPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F4FD),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: AppStyles.kCustomGradient,
            ),
            child: Image(
              image: AssetImage(AssetsData.supportAgentIcon),
              color: Colors.white,
              width: 36,
              height: 36,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'كيف يمكننا مساعدتك؟',
            style: Styles.textStyle20.copyWith(
              color: const Color(0xff272323),
              height: 1.6,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              Text(
                'فريق الدعم الفني جاهز لمساعدتك في  ',
                textAlign: TextAlign.center,
                style: Styles.textStyle14.copyWith(
                  color: Color(0xff7d8392),

                  height: 1.6,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'اي وقت',
                textAlign: TextAlign.center,
                style: Styles.textStyle14.copyWith(
                  color: Color(0xff7d8392),
                  height: 1.6,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
