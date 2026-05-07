import 'package:bengo_app/Features/onBoard/presentation/view_models/on_board_view_model.dart';
import 'package:bengo_app/Features/onBoard/presentation/views/widgets/on_board_action_button.dart';
import 'package:bengo_app/Features/onBoard/presentation/views/widgets/on_board_background_curves.dart';
import 'package:bengo_app/Features/onBoard/presentation/views/widgets/on_board_illustration.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class OnBoardViewBody extends StatelessWidget {
  const OnBoardViewBody({super.key, required this.viewModel});

  final OnBoardViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(gradient: AppStyles.kMainGradient),
      child: Stack(
        children: [
          const OnBoardBackgroundCurves(),
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final height = constraints.maxHeight;
              final scaleX = width / 696;
              final scaleY = height / 1568;
              final textScale = scaleX.clamp(0.82, 1.15);
              final illustrationSize = 520 * scaleX;
              final buttonWidth = 560 * scaleX;
              final buttonHeight = 104 * scaleY;

              return Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 88 * scaleY,
                    child: SizedBox(
                      width: illustrationSize,
                      height: illustrationSize,
                      child: const OnBoardIllustration(),
                    ),
                  ),
                  Positioned(
                    top: 822 * scaleY,
                    left: 24,
                    right: 24,
                    child: Text(
                      viewModel.title,
                      style: AppStyles.onBoardTitleStyle.copyWith(
                        fontSize: 64 * textScale,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    top: 946 * scaleY,
                    left: 24,
                    right: 24,
                    child: Text(
                      viewModel.subtitle,
                      style: AppStyles.onBoardSubtitleStyle.copyWith(
                        fontSize: 48 * textScale,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Positioned(
                    top: 1127 * scaleY,
                    child: OnBoardActionButton(
                      width: buttonWidth,
                      height: buttonHeight,
                      borderRadius: 28 * scaleX,
                      fontSize: 30 * textScale,
                      text: viewModel.loginButtonText,
                      type: OnBoardActionButtonType.primary,
                    ),
                  ),
                  Positioned(
                    top: 1279 * scaleY,
                    child: OnBoardActionButton(
                      width: buttonWidth,
                      height: buttonHeight,
                      borderRadius: 28 * scaleX,
                      fontSize: 28 * textScale,
                      text: viewModel.createAccountButtonText,
                      type: OnBoardActionButtonType.secondary,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
