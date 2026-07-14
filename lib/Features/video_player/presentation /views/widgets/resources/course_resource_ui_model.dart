enum CourseResourceAccess { available, locked }

class CourseResourceUiModel {
  const CourseResourceUiModel({
    required this.title,
    required this.imagePath,
    this.subtitle,
    this.access = CourseResourceAccess.available,
    this.lockedLabel,
    this.badgeLabel,
    this.price,
    this.isHighlighted = false,
    this.height,
  });

  final String title;
  final String imagePath;
  final String? subtitle;

  final CourseResourceAccess access;

  final String? lockedLabel;
  final String? badgeLabel;
  final String? price;

  final bool isHighlighted;
  final double? height;

  bool get isLocked => access == CourseResourceAccess.locked;
}
