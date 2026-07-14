import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../widgets/course_header_widget.dart';
import '../widgets/course_description_widget.dart';
import '../widgets/course_content_accordion.dart';

class CourseDetailsBody extends StatelessWidget {
  const CourseDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CourseHeaderWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 65.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const CourseDescriptionWidget(),

                const SizedBox(height: 30),

                Text(
                  "محتوى المادة",
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff272323),
                  ),
                ),

                const SizedBox(height: 15),

                // قسم المذكرات (Static Data)
                const CourseContentAccordion(
                  image: "assets/images/mozkraat.png",
                  title: "المذكرات",
                  count: "عدد 8 المذكرات",
                  items: [
                    CourseContentItem(
                      title: "مذكرة المحاضرة الأولى - مقدمة في المحاسبة",
                      price: "25",
                      itemIcon: 'assets/images/bookIcon.png',
                    ),
                    CourseContentItem(
                      title: "مذكرة المحاضرة الثانية - المعادلة المحاسبية",
                      price: "30",
                      itemIcon: 'assets/images/bookIcon.png',
                    ),
                    CourseContentItem(
                      title: "مذكرة المحاضرة الثالثة - القيود اليومية",
                      price: "25",
                      itemIcon: 'assets/images/bookIcon.png',
                    ),
                    CourseContentItem(
                      title: "مذكرة المحاضرة الرابعة - دفتر الأستاذ",
                      price: "28",
                      itemIcon: 'assets/images/bookIcon.png',
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // قسم الاختبارات (Static Data)
                const CourseContentAccordion(
                  image: "assets/images/exams.png",
                  title: "الاختبارات",
                  count: "عدد 2 إختبارات",
                  items: [
                    CourseContentItem(
                      title: "اختبار الوحدة الأولى",
                      price: "15",
                      itemIcon: 'assets/images/videoIcon.png',
                    ),
                    CourseContentItem(
                      title: "اختبار الوحدة الثانية",
                      price: "20",
                      itemIcon: 'assets/images/videoIcon.png',
                    ),
                  ],
                ),

                // مساحة إضافية في الأسفل عشان المحتوى ميتغطاش بالـ Bottom Bar
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
