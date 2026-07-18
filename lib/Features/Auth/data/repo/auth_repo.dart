import 'package:bengo_app/Features/Auth/data/models/category_model.dart';
import 'package:bengo_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepo {
  Future<Either<Failure, AuthResponse>> signUp({
    required String email,
    required String password,
    required String fullName,
  });

  Future<Either<Failure, AuthResponse>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, void>> signInWithGoogle();

  Future<Either<Failure, void>> completeProfile({
    required String userId,
    required int universityId,
    required int collegeId,
    required int yearId,
    required int semesterId,
    required String phone,
  });

  Future<Either<Failure, List<CategoryModel>>> fetchUniversities();
  Future<Either<Failure, List<CategoryModel>>> fetchColleges(int universityId);
  Future<Either<Failure, List<CategoryModel>>> fetchAcademicYears();
  Future<Either<Failure, List<CategoryModel>>> fetchSemesters();
}
