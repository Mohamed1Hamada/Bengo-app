import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class ContactMethodTile extends StatelessWidget {
  const ContactMethodTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.gradient,
    this.color,
    required this.imagePath,
  });

  final String title;
  final String subtitle;

  final Color? color;
  final Gradient? gradient;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffeff3fd),
      borderRadius: BorderRadius.circular(18),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,

                gradient: gradient,
                color: gradient == null ? (color ?? Colors.blue) : null,
              ),
              child: Image(
                image: AssetImage(imagePath),
                color: Colors.white,
                width: 22,
                height: 22,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Styles.textStyle16.copyWith(
                      color: const Color(0xff272323),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    subtitle,
                    style: Styles.textStyle12.copyWith(
                      color: const Color(0xff542343),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xffaeb8ca),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
