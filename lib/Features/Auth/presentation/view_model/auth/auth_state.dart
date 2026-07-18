import '../../../data/models/category_model.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthFailure extends AuthState {
  final String errMessage;
  AuthFailure(this.errMessage);
}

/// ✅ تسجيل جديد
class RegisterSuccess extends AuthState {
  final String userId;
  RegisterSuccess(this.userId);
}

/// ✅ تسجيل دخول
class LoginSuccess extends AuthState {}

/// ✅ تحميل بيانات الـ Dropdown
class MetaDataLoading extends AuthState {}

class MetaDataLoaded extends AuthState {
  final List<CategoryModel> universities;
  final List<CategoryModel> colleges;
  final List<CategoryModel> academicYears;
  final List<CategoryModel> semesters;

  MetaDataLoaded({
    required this.universities,
    required this.colleges,
    required this.academicYears,
    required this.semesters,
  });
}

/// ✅ إكمال البروفايل
class CompleteProfileSuccess extends AuthState {}
