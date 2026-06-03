import 'package:flutter/material.dart';

class TopUpButton extends StatelessWidget {
  const TopUpButton({
    super.key,
    this.text = 'شحن الرصيد',
    this.opacity = 1,
    this.onTap,
  });
  final void Function()? onTap;
  final String text;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 56,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff1d2f8a), Color(0xffb32389), Color(0xffdb2231)],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x3d49287e),
                blurRadius: 26,
                offset: Offset(0, 12),
              ),
            ],
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
