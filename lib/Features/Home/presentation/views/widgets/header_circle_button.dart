import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderCircleButton extends StatelessWidget {
  const HeaderCircleButton({super.key, required this.icon, required this.onTap});

  final FaIconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withValues(alpha: 0.22),
      shape: const CircleBorder(),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: 80.r,
          height: 80.r,
          child: Center(
            child: FaIcon(icon, color: Colors.white, size: 30.sp),
          ),
        ),
      ),
    );
  }
}
