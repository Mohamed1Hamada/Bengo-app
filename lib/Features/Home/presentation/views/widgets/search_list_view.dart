import 'package:bengo_app/Features/Home/data/models/custom_course_card_model.dart';
import 'package:bengo_app/Features/Home/presentation/views/widgets/custom_search_card.dart';
import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:flutter/material.dart';
// افترض أن كود الكارت الذي كتبناه سابقاً موجود في هذا الملف أو ملف منفصل

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    // بيانات تجريبية (Static Data) لتمثيل ما سيأتي من الـ ViewModel
    final List<Map<String, String>> dummyCourses = [
      {
        'title': 'محاسبة مالية',
        'category': 'محاسبة',
        'level': 'متوسط',
        'price': '299 ج.م',
        'image':
            '$AsstesData.test1', // استبدل هذا بالمسار الصحيح للصورة في مشروعك
      },
      {
        'title': 'إدارة المشاريع',
        'category': 'إدارة',
        'level': 'متقدم',
        'price': '299 ج.م',
        'image':  '$AsstesData.test1',
      },
      {
        'title': 'تصميم الجرافيك',
        'category': 'تصميم',
        'level': 'مبتدئ',
        'price': '299 ج.م',
        'image':  '$AsstesData.test1',
      },
      {
        'title': 'برمجة فلاتر',
        'category': 'برمجة',
        'level': 'متوسط',
        'price': '500 ج.م',
        'image':  '$AsstesData.test1',
      },
    ];

    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        itemCount: dummyCourses.length, // عدد العناصر
        itemBuilder: (context, index) {
          final course = dummyCourses[index];
          // استدعاء الويدجت التي صممناها سابقاً
          return CustomSearchCard(
            model: CustomCourseCardModel(
              title: course['title']!,
              category: course['category']!,
              level: course['level']!,
              price: course['price']!,
              image: course['image']!,
            ),
          );
        },
      ),
    );
  }
}
