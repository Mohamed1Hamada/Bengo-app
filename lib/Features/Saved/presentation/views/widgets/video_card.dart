import 'package:bengo_app/Features/Saved/data/model/video_model.dart';
import 'package:bengo_app/core/utils/asstes.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final Video video;
  const VideoCard({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffF0F4FD),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. الصورة
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                video.pathImage,
                width: 90,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),

            // 2. النصوص
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // العنوان
                  Text(
                    video.title,
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF272323),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),

                  // التصنيف (Category)
                  Text(
                    video.category,
                    style: Styles.textStyle12.copyWith(
                      color: const Color(0xff542343),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // الوقت
                      Text(
                        "${video.durationInMinutes} دقيقة",
                        style: Styles.textStyle12.copyWith(color: Colors.grey),
                      ),

                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          AssetsData.savedIconIconSm,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
