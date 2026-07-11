import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundCurves extends StatelessWidget {
  const BackgroundCurves({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        // الدائرة العلوية
        Positioned(
          top: -172.h,
          left: 337.w,
          child: _GradientCircle(size: 640.r, opacity: 0.16),
        ),
        Positioned(
          top: -166.h,
          left: 330.w,
          child: _CircleBorder(size: 665.r, opacity: 0.33, borderWidth: 2.r),
        ),

        // الدائرة السفلية
        Positioned(
          top: 1228.h,
          left: -200.w,
          child: _GradientCircle(size: 640.r, opacity: 0.22),
        ),
        Positioned(
          top: 1215.h,
          left: -185.w,
          child: _CircleBorder(size: 665.r, opacity: 0.42, borderWidth: 2.2.r),
        ),
      ],
    );
  }
}

// ==================== Private Widgets ====================

class _GradientCircle extends StatelessWidget {
  const _GradientCircle({required this.size, required this.opacity});

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

class _CircleBorder extends StatelessWidget {
  const _CircleBorder({
    required this.size,
    required this.opacity,
    this.borderWidth = 1,
  });

  final double size;
  final double opacity;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withValues(alpha: opacity),
          width: borderWidth,
        ),
      ),
    );
  }
}
