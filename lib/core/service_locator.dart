import 'package:bengo_app/Features/Auth/data/repo/auth_repo.dart';
import 'package:bengo_app/Features/Auth/data/repo/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl());
}
