import 'package:flutter/material.dart';

class BackgroundCurves extends StatelessWidget {
  const BackgroundCurves({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        final scaleX = width / 706;
        final scaleY = height / 1584;
        final circleScale = scaleX;

        return Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Positioned(
              top: -172 * scaleY,
              left: 337 * scaleX,
              child: _GradientCircle(size: 640 * circleScale, opacity: 0.16),
            ),
            Positioned(
              top: -166 * scaleY,
              left: 330 * scaleX,
              child: _CircleBorder(
                size: 665 * circleScale,
                opacity: 0.33,
                borderWidth: 2 * circleScale,
              ),
            ),
            Positioned(
              top: 1228 * scaleY,
              left: -200 * scaleX,
              child: _GradientCircle(size: 640 * circleScale, opacity: 0.22),
            ),
            Positioned(
              top: 1215 * scaleY,
              left: -185 * scaleX,
              child: _CircleBorder(
                size: 665 * circleScale,
                opacity: 0.42,
                borderWidth: 2.2 * circleScale,
              ),
            ),
          ],
        );
      },
    );
  }
}

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
