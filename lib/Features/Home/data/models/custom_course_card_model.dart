class CustomCourseCardModel {
  final String title;
  final String category;
  final String? level;
  final String? price;
  final String image;
  final bool isPaid;

  final double? progress;
  final bool? isCompleted;
  final String? availableText;

  const CustomCourseCardModel({
    required this.title,
    required this.category,
    this.level,
    this.price,
    required this.image,
    this.isPaid = true,
    this.progress,
    this.isCompleted,
    this.availableText,
  });
}
