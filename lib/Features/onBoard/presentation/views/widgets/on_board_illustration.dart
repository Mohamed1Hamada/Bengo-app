import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:flutter/material.dart';

class OnBoardIllustration extends StatelessWidget {
  const OnBoardIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        final scaleX = width / 520;
        final scaleY = height / 520;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            _PositionedAsset(
              asset: AsstesData.onBoardFloor,
              left: 42 * scaleX,
              top: 266 * scaleY,
              width: 430 * scaleX,
            ),
            _PositionedAsset(
              asset: AsstesData.onBoardShadows,
              left: 112 * scaleX,
              top: 338 * scaleY,
              width: 265 * scaleX,
            ),
            _PositionedAsset(
              asset: AsstesData.onBoardSideTable,
              left: 88 * scaleX,
              top: 278 * scaleY,
              width: 74 * scaleX,
            ),
            _PositionedAsset(
              asset: AsstesData.onBoardCharacter,
              left: 178 * scaleX,
              top: 174 * scaleY,
              width: 185 * scaleX,
            ),
            _PositionedAsset(
              asset: AsstesData.onBoardScreens,
              left: 314 * scaleX,
              top: 58 * scaleY,
              width: 190 * scaleX,
            ),
            _PositionedAsset(
              asset: AsstesData.onBoardIcon,
              left: 112 * scaleX,
              top: 102 * scaleY,
              width: 54 * scaleX,
            ),
          ],
        );
      },
    );
  }
}

class _PositionedAsset extends StatelessWidget {
  const _PositionedAsset({
    required this.asset,
    required this.left,
    required this.top,
    required this.width,
  });

  final String asset;
  final double left;
  final double top;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Image.asset(asset, width: width, fit: BoxFit.contain),
    );
  }
}
