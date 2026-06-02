import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.bookmark_border, size: 60, color: Colors.grey),
        ),
        const SizedBox(height: 16),
        const Text("لا توجد فيديوهات محفوظة", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 8),
        const Text("احفظ الفيديوهات المهمة لمشاهدتها لاحقاً", style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}