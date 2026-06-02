import 'package:bengo_app/Features/Saved/data/model/video_model.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final Video video;
  const VideoCard({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white, // يمكنك تغيير الخلفية
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // 1. الصورة
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              video.pathImage,
              width: 90, // جعلتها أكبر قليلاً لتكون أوضح
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
                Text(
                  video.title,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  "${video.category} • ${video.time}",
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          
          // 3. أيقونة الحفظ
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.bookmark_border, color: Color(0xFF7C3AED)),
          ),
        ],
      ),
    );
  }
}