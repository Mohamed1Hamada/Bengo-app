import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.bookmark_border, size: 80, color: Colors.grey),
        Text("لا توجد فيديوهات محفوظة", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("احفظ الفيديوهات المهمة لمشاهدتها لاحقاً"),
      ],
    );
  }
}