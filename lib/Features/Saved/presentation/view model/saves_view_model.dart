import 'package:bengo_app/Features/Saved/data/model/video_model.dart';

class SavesViewModel {
  List<Video> getSavedVideos() {
    return [
      Video(
        title:  'المحاضرة الأولى - مقدمة في المحاسبة',
        category: 'محاسبة مالية - الفرقة الأولى',
        durationInMinutes: 45,
        pathImage: 'assets/images/video icon.png',
      ),
      Video(
        title: 'المحاضرة الثانية - المعادلة المحاسبية',
        category: 'محاسبة مالية - الفرقة الثانية',
        durationInMinutes: 38,
        pathImage: 'assets/images/video icon.png',
      ),
    ];
  }

  // دالة لحساب الوقت الإجمالي بالساعات
  String getTotalHours(List<Video> videos) {
    int totalMinutes = videos.fold(
      0,
      (sum, item) => sum + item.durationInMinutes,
    );
    double hours = totalMinutes / 60;
    return hours.toStringAsFixed(2); // يعيد الوقت كساعات
  }
}
