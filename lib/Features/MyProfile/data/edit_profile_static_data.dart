/// edit_profile_static_data.dart
///
/// البيانات الثابتة المستخدمة في صفحة تعديل الملف الشخصي
library;

const List<String> universities = [
  'جامعة القاهرة',
  'جامعة عين شمس',
  'جامعة الإسكندرية',
  'جامعة المنصورة',
  'جامعة حلوان',
];

const List<String> colleges = [
  'كلية التجارة',
  'كلية الهندسة',
  'كلية الآداب',
  'كلية الحقوق',
  'كلية العلوم',
];

const List<String> departments = [
  'المحاسبة',
  'إدارة الأعمال',
  'التمويل والاستثمار',
  'التسويق',
  'نظم المعلومات الإدارية',
];

const List<String> studyYears = [
  'السنة الأولى',
  'السنة الثانية',
  'السنة الثالثة',
  'السنة الرابعة',
  'السنة الخامسة',
];

/// بيانات افتراضية للمستخدم
const Map<String, String> defaultProfile = {
  'fullName': 'محمد أحمد',
  'email': 'mohamed@example.com',
  'phone': '01234567890',
  'university': 'جامعة القاهرة',
  'college': 'كلية التجارة',
  'department': 'المحاسبة',
  'studyYear': 'السنة الثانية',
};