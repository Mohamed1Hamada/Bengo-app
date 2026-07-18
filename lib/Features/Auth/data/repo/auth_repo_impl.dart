import 'package:bengo_app/Features/Auth/data/models/category_model.dart';
import 'package:bengo_app/Features/Auth/data/repo/auth_repo.dart';
import 'package:bengo_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepoImpl implements AuthRepo {
  final SupabaseClient _supabase = Supabase.instance.client;

  @override
  Future<Either<Failure, AuthResponse>> signUp({
    required String email,
    required String password,
    required String fullName,
  }) async {
    try {
      final response = await _supabase.auth.signUp(
        email: email,
        password: password,
        data: {'full_name': fullName},
      );

      if (response.user == null) {
        return left(ServerFailure("فشل إنشاء الحساب"));
      }

      return right(response);
    } on AuthException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthResponse>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user == null) {
        return left(ServerFailure("بيانات تسجيل الدخول غير صحيحة"));
      }

      return right(response);
    } on AuthException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure("حدث خطأ أثناء تسجيل الدخول"));
    }
  }

  @override
  Future<Either<Failure, void>> signInWithGoogle() async {
    try {
      final bool success = await _supabase.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: 'io.supabase.bengoapp://login-callback',
      );
      if (!success) {
        return left(ServerFailure("تعذر البدء في تسجيل الدخول بـ Google"));
      }
      return right(null);
    } on AuthException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure("حدث خطأ أثناء تسجيل الدخول بـ Google"));
    }
  }

  @override
  Future<Either<Failure, void>> completeProfile({
    required String userId,
    required int universityId,
    required int collegeId,
    required int yearId,
    required int semesterId,
    required String phone,
  }) async {
    try {
      await _supabase.from('profiles').upsert({
        'id': userId,
        'university_id': universityId,
        'college_id': collegeId,
        'academic_year_id': yearId,
        'semester_id': semesterId,
        'phone': phone,
        'is_profile_completed': true,
        'updated_at': DateTime.now().toIso8601String(),
      });

      return right(null);
    } catch (e) {
      return left(ServerFailure("فشل حفظ البيانات: ${e.toString()}"));
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> fetchUniversities() async {
    try {
      final data = await _supabase.from('universities').select();
      final list = (data as List)
          .map((e) => CategoryModel.fromJson(e))
          .toList();
      return right(list);
    } catch (e) {
      return left(ServerFailure("تعذر تحميل الجامعات"));
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> fetchColleges(
    int universityId,
  ) async {
    try {
      // جلب جميع الكليات العامة المتاحة لكل الجامعات
      final data = await _supabase.from('colleges').select();

      final list = (data as List)
          .map((e) => CategoryModel.fromJson(e))
          .toList();
      return right(list);
    } catch (e) {
      return left(ServerFailure("تعذر تحميل الكليات"));
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> fetchAcademicYears() async {
    try {
      final data = await _supabase.from('academic_years').select();
      final list = (data as List)
          .map((e) => CategoryModel.fromJson(e))
          .toList();
      return right(list);
    } catch (e) {
      return left(ServerFailure("تعذر تحميل الفرق الدراسية"));
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> fetchSemesters() async {
    try {
      final data = await _supabase.from('semesters').select();
      final list = (data as List)
          .map((e) => CategoryModel.fromJson(e))
          .toList();
      return right(list);
    } catch (e) {
      return left(ServerFailure("تعذر تحميل التيرمات"));
    }
  }
}
