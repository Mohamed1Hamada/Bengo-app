class Video {
  final String title;
  final String category;
  final int durationInMinutes; // تم تغييرها لرقم لتسهيل الحساب
  final String pathImage;

  Video({
    required this.title,
    required this.category,
    required this.durationInMinutes,
    required this.pathImage,
  });
}