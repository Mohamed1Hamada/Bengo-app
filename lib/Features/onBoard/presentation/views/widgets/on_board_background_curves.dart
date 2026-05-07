import 'package:flutter/material.dart';

class OnBoardBackgroundCurves extends StatelessWidget {
  const OnBoardBackgroundCurves({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        final scaleX = width / 696;
        final scaleY = height / 1568;
        final circleScale = scaleX;

        return Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Positioned(
              top: -171 * scaleY,
              left: 337 * scaleX,
              child: _FilledCircle(size: 640 * circleScale, opacity: 0.16),
            ),
            Positioned(
              top: -166 * scaleY,
              left: 337 * scaleX,
              child: _CircleStroke(
                size: 665 * circleScale,
                opacity: 0.33,
                strokeWidth: 2 * circleScale,
              ),
            ),
          ],
        );
      },
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
