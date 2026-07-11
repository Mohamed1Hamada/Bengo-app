import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardBackgroundCurves extends StatelessWidget {
  const OnBoardBackgroundCurves({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        Positioned(
          top: -171.h,
          left: 337.w,
          child: _FilledCircle(size: 640.r, opacity: 0.16),
        ),
        Positioned(
          top: -166.h,
          left: 337.w,
          child: _CircleStroke(size: 665.r, opacity: 0.33, strokeWidth: 2.r),
        ),
      ],
    );
  }
}

class _FilledCircle extends StatelessWidget {
  const _FilledCircle({required this.size, required this.opacity});

  final double size;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withValues(alpha: opacity),
      ),
    );
  }
}

class _CircleStroke extends StatelessWidget {
  const _CircleStroke({
    required this.size,
    required this.opacity,
    required this.strokeWidth,
  });

  final double size;
  final double opacity;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withValues(alpha: opacity),
          width: strokeWidth,
        ),
      ),
    );
  }
}
