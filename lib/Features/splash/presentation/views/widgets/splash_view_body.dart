import 'package:bengo_app/Features/splash/presentation/views/widgets/background_curves.dart';
import 'package:bengo_app/Features/splash/presentation/views/widgets/splash_content.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(gradient: AppStyles.kMainGradient),
      child: Stack(
        children: [
          const BackgroundCurves(),
          Center(child: SplashContent()),
        ],
      ),
    );
  }
}
