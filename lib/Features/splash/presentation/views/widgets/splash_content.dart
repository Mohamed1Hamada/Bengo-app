import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    const double badgeSize = 129;
    const double logoSize = 109;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: badgeSize,
            height: badgeSize,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppStyles.kLogoBadgeColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.36),
                  blurRadius: 42,
                  spreadRadius: -10,
                  offset: const Offset(0, 24),
                ),
              ],
            ),
            child: Image.asset(
              AsstesData.logo,
              width: logoSize,
              height: logoSize,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 48),
          Text(
            'BENGO',
            style: AppStyles.splashTitleStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 28),
          Text(
            'منصتك الذكية للتعلّم والتطور',
            style: AppStyles.splashSubtitleStyle,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
