import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class LecturePriceButton extends StatelessWidget {
  const LecturePriceButton({super.key, required this.price, this.onTap});

  final String price;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: Ink(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: AppStyles.kPriceButton,
          ),
          child: Center(
            child: FittedBox(
              child: Text(
                price,
                textAlign: TextAlign.center,
                style: Styles.textStyle14.copyWith(
                  color: Colors.white,
                  height: 1.1,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
