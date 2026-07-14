import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'lecture_price_button.dart';
import 'lecture_state_image.dart';
import 'lecture_watch_state.dart';

export 'lecture_watch_state.dart';

class CourseLectureCard extends StatelessWidget {
  const CourseLectureCard({
    super.key,
    required this.title,
    required this.duration,
    required this.isSelected,
    required this.watchState,
    this.price,
    this.onTap,
    this.onPriceTap,
  });

  final String title;
  final String duration;
  final bool isSelected;
  final LectureWatchState watchState;

  final String? price;

  final VoidCallback? onTap;
  final VoidCallback? onPriceTap;

  @override
  Widget build(BuildContext context) {
    final Gradient selectedCardGradient = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xFFf5e9f2), Color(0xFFe9eff8)],
    );

    final Color unSelectedCardColor = const Color(0xFFf0f4fd);

    final Color selectedBorderColor = AppStyles.kGradientEndColor;

    final Color selectedTextColor = const Color(0xFF272323);
    final Color unSelectedTextColor = const Color(0xFF272323);

    final Color textColor = isSelected
        ? selectedTextColor
        : unSelectedTextColor;

    final double cardHeight = isSelected ? 121 : 96;

    final bool isLocked = watchState == LectureWatchState.locked;

    final String? lockedPrice = isLocked ? price : null;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: isLocked ? null : onTap,
          borderRadius: BorderRadius.circular(18),
          child: Ink(
            height: cardHeight,
            decoration: BoxDecoration(
              color: isSelected ? null : unSelectedCardColor,
              gradient: isSelected ? selectedCardGradient : null,
              borderRadius: BorderRadius.circular(18),
              border: isSelected
                  ? Border.all(color: selectedBorderColor, width: 2)
                  : null,
            ),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                const SizedBox(width: 20),

                LectureStateImage(watchState: watchState),

                // المسافة بين الأيقونة والكلام
                const SizedBox(width: 12),

                Expanded(
                  child: _LectureTitleAndDuration(
                    title: title,
                    duration: duration,
                    isSelected: isSelected,
                    textColor: textColor,
                  ),
                ),

                if (lockedPrice != null) ...[
                  const SizedBox(width: 10),
                  LecturePriceButton(price: lockedPrice, onTap: onPriceTap),
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

class _LectureTitleAndDuration extends StatelessWidget {
  const _LectureTitleAndDuration({
    required this.title,
    required this.duration,
    required this.isSelected,
    required this.textColor,
  });

  final String title;
  final String duration;
  final bool isSelected;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.right,
            maxLines: isSelected ? 2 : 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle16.copyWith(
              color: textColor,
              fontWeight: FontWeight.w500,
              height: 1.35,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            duration,
            textAlign: TextAlign.right,
            style: Styles.textStyle14.copyWith(
              color: Color(0xFFb5b2bb),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
