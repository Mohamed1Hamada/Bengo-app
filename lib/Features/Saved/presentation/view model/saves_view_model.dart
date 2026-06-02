
import 'package:bengo_app/Features/Saved/data/model/video_model.dart';

class SavesViewModel {
  // بيانات تجريبية
  List<Video> getSavedVideos() {
    return [
      Video(
        title: 'المحاضرة الأولى - مقدمة في المحاسبة',
        category: 'محاسبة مالية - الفرقة الأولى',
        time: '45:30',
        pathImage: 'assets/images/video icon.png',
      ),
      Video(
        title: 'المحاضرة الثانية - المعادلة المحاسبية',
        category: 'محاسبة مالية - الفرقة الأولى',
        time: '38:15',
        pathImage: 'assets/images/video icon.png',
      ),
    ];
  }
}