import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardIllustration extends StatelessWidget {
  const OnBoardIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _PositionedAsset(
          asset: AssetsData.onBoardFloor,
          left: 42.w,
          top: 266.h,
          width: 430.w,
        ),
        _PositionedAsset(
          asset: AssetsData.onBoardShadows,
          left: 112.w,
          top: 338.h,
          width: 265.w,
        ),
        _PositionedAsset(
          asset: AssetsData.onBoardSideTable,
          left: 88.w,
          top: 278.h,
          width: 74.w,
        ),
        _PositionedAsset(
          asset: AssetsData.onBoardCharacter,
          left: 178.w,
          top: 174.h,
          width: 185.w,
        ),
        _PositionedAsset(
          asset: AssetsData.onBoardScreens,
          left: 314.w,
          top: 58.h,
          width: 190.w,
        ),
        _PositionedAsset(
          asset: AssetsData.onBoardIcon,
          left: 112.w,
          top: 102.h,
          width: 54.w,
        ),
      ],
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
