import 'package:bengo_app/Features/Auth/data/models/category_model.dart';
import 'package:bengo_app/Features/Auth/data/repo/auth_repo.dart';
import 'package:bengo_app/Features/Auth/presentation/view_model/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authRepo;

  AuthCubit(this.authRepo) : super(AuthInitial());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  int? selectedUniId;
  int? selectedCollegeId;
  int? selectedYearId;
  int? selectedSemesterId;

  List<CategoryModel> universities = [];
  List<CategoryModel> colleges = [];
  List<CategoryModel> academicYears = [];
  List<CategoryModel> semesters = [];

  Future<void> registerUser() async {
    final cleanEmail = emailController.text.trim().toLowerCase();
    final cleanPassword = passwordController.text.trim();
    final cleanName = nameController.text.trim();

    if (cleanEmail.isEmpty ||
        !cleanEmail.contains('@') ||
        !cleanEmail.contains('.')) {
      emit(AuthFailure("صيغة البريد الإلكتروني غير صحيحة"));
      return;
    }

    emit(AuthLoading());
    final result = await authRepo.signUp(
      email: cleanEmail,
      password: cleanPassword,
      fullName: cleanName,
    );

    result.fold(
      (failure) => emit(AuthFailure(failure.errMessage)),
      (response) => emit(RegisterSuccess(response.user!.id)),
    );
  }

  Future<void> loginUser() async {
    final cleanEmail = emailController.text.trim().toLowerCase();
    final cleanPassword = passwordController.text.trim();

    if (cleanEmail.isEmpty) {
      emit(AuthFailure("يرجى إدخال البريد الإلكتروني"));
      return;
    }

    emit(AuthLoading());
    final result = await authRepo.login(
      email: cleanEmail,
      password: cleanPassword,
    );

    result.fold(
      (failure) => emit(AuthFailure(failure.errMessage)),
      (_) => emit(LoginSuccess()),
    );
  }

  Future<void> loginWithGoogle() async {
    emit(AuthLoading());
    final result = await authRepo.signInWithGoogle();

    result.fold(
      (failure) => emit(AuthFailure(failure.errMessage)),
      (_) => emit(LoginSuccess()),
    );
  }

  Future<void> loadMetaData() async {
    emit(MetaDataLoading());

    final results = await Future.wait([
      authRepo.fetchUniversities(),
      authRepo.fetchColleges(0),
      authRepo.fetchAcademicYears(),
      authRepo.fetchSemesters(),
    ]);

    String? errorMessage;

    results[0].fold(
      (f) => errorMessage = f.errMessage,
      (d) => universities = d,
    );
    results[1].fold((f) => errorMessage = f.errMessage, (d) => colleges = d);
    results[2].fold(
      (f) => errorMessage = f.errMessage,
      (d) => academicYears = d,
    );
    results[3].fold((f) => errorMessage = f.errMessage, (d) => semesters = d);

    if (errorMessage != null) {
      emit(AuthFailure(errorMessage!));
    } else {
      emit(
        MetaDataLoaded(
          universities: universities,
          colleges: colleges,
          academicYears: academicYears,
          semesters: semesters,
        ),
      );
    }
  }

  Future<void> loadColleges(int universityId) async {
    // تم توحيد الكليات للجميع
  }

  Future<void> finishProfile(String userId) async {
    if (selectedUniId == null) {
      emit(AuthFailure("برجاء اختيار الجامعة"));
      return;
    }
    if (selectedCollegeId == null) {
      emit(AuthFailure("برجاء اختيار الكلية"));
      return;
    }
    if (selectedYearId == null) {
      emit(AuthFailure("برجاء اختيار الفرقة الدراسية"));
      return;
    }
    if (selectedSemesterId == null) {
      emit(AuthFailure("برجاء اختيار الترم"));
      return;
    }
    if (phoneController.text.trim().isEmpty) {
      emit(AuthFailure("برجاء إدخال رقم الهاتف"));
      return;
    }

    emit(AuthLoading());

    final result = await authRepo.completeProfile(
      userId: userId,
      universityId: selectedUniId!,
      collegeId: selectedCollegeId!,
      yearId: selectedYearId!,
      semesterId: selectedSemesterId!,
      phone: phoneController.text.trim(),
    );

    result.fold((failure) {
      emit(AuthFailure(failure.errMessage));
      emit(
        MetaDataLoaded(
          universities: universities,
          colleges: colleges,
          academicYears: academicYears,
          semesters: semesters,
        ),
      );
    }, (_) => emit(CompleteProfileSuccess()));
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
    return super.close();
  }
}
