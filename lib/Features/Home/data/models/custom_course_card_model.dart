class CustomCourseCardModel {
  final String title;
  final String category;
  final String level;
  final String price;
  final String image;
  final bool isPaid;

  const CustomCourseCardModel({
    required this.title,
    required this.category,
    required this.level,
    required this.price,
    required this.image,
    this.isPaid = true,
  });
}