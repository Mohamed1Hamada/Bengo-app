import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../lectures/lecture_price_button.dart';
import 'course_resource_ui_model.dart';

class CourseResourceCard extends StatelessWidget {
  const CourseResourceCard({
    super.key,
    required this.item,
    this.onTap,
    this.onPriceTap,
  });

  final CourseResourceUiModel item;
  final VoidCallback? onTap;
  final VoidCallback? onPriceTap;

  @override
  Widget build(BuildContext context) {
    final bool hasSubtitle =
        item.subtitle != null && item.subtitle!.trim().isNotEmpty;

    final double cardHeight =
        item.height ??
        (item.isHighlighted
            ? 124
            : hasSubtitle
            ? 92
            : 76);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: item.isLocked ? null : onTap,
          borderRadius: BorderRadius.circular(18),
          child: Ink(
            height: cardHeight,
            decoration: BoxDecoration(
              color: item.isHighlighted
                  ? const Color(0xFFFFF4F4)
                  : const Color(0xFFF0F4FD),
              borderRadius: BorderRadius.circular(18),
              border: item.isHighlighted
                  ? Border.all(color: const Color(0xFFD32F2F), width: 1.2)
                  : null,
            ),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                const SizedBox(width: 18),

                ResourceIconCircle(
                  imagePath: item.imagePath,
                  isLocked: item.isLocked,
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ResourceTextInfo(
                    title: item.title,
                    subtitle: item.subtitle,
                    isLocked: item.isLocked,
                    isHighlighted: item.isHighlighted,
                  ),
                ),

                if (item.price != null) ...[
                  const SizedBox(width: 10),
                  LecturePriceButton(price: item.price!, onTap: onPriceTap),
                ] else if (item.badgeLabel != null) ...[
                  const SizedBox(width: 10),
                  ResourceBadge.important(text: item.badgeLabel!),
                ] else if (item.isLocked && item.lockedLabel != null) ...[
                  const SizedBox(width: 10),
                  ResourceBadge.locked(text: item.lockedLabel!),
                ],

                const SizedBox(width: 14),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResourceIconCircle extends StatelessWidget {
  const ResourceIconCircle({
    super.key,
    required this.imagePath,
    required this.isLocked,
  });
  final String imagePath;
  final bool isLocked;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isLocked ? const Color(0xFFD7DEE8) : null,
        gradient: isLocked ? null : AppStyles.kMainGradient,
      ),
      child: Center(
        child: isLocked
            ? const Icon(
                Icons.lock_outline_rounded,
                color: Colors.white,
                size: 27,
              )
            : Image.asset(
                imagePath,
                width: 26,
                height: 26,
                fit: BoxFit.contain,
                color: Colors.white,
              ),
      ),
    );
  }
}

class ResourceTextInfo extends StatelessWidget {
  const ResourceTextInfo({
    super.key,
    required this.title,
    this.subtitle,
    required this.isLocked,
    required this.isHighlighted,
  });
  final String title;
  final String? subtitle;
  final bool isLocked;
  final bool isHighlighted;

  @override
  Widget build(BuildContext context) {
    final bool hasSubtitle = subtitle != null && subtitle!.trim().isNotEmpty;
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.right,
            maxLines: hasSubtitle ? 2 : 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle16.copyWith(
              color: isLocked
                  ? const Color(0xFF8E95A3)
                  : const Color(0xff272323),
              fontWeight: FontWeight.w500,
              height: 1.35,
            ),
          ),

          if (hasSubtitle) ...[
            const SizedBox(height: 4),
            Text(
              subtitle!,
              textAlign: TextAlign.right,
              maxLines: isHighlighted ? 3 : 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle14.copyWith(
                color: isLocked
                    ? const Color(0xFFA9AFBA)
                    : const Color(0xFF8A8F9B),
                fontSize: 12,
                fontWeight: FontWeight.w400,
                height: 1.35,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class ResourceBadge extends StatelessWidget {
  const ResourceBadge._({
    required this.text,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
  });

  ResourceBadge.locked({required String text})
    : this._(
        text: text,
        backgroundColor: Colors.white,
        borderColor: Color(0xFFE0E3EA),
        textColor: Color(0xFF9AA1AD),
      );

  ResourceBadge.important({required String text})
    : this._(
        text: text,
        backgroundColor: Color(0xFFD32F2F),
        borderColor: Color(0xFFD32F2F),
        textColor: Colors.white,
      );

  final String text;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 30,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Center(
        child: Text(
          text,
          style: Styles.textStyle14.copyWith(
            color: textColor,

            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
