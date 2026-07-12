import 'package:bengo_app/Features/Auth/presentation/views/complete_profile_view.dart';
import 'package:bengo_app/Features/Auth/presentation/views/login_view.dart';
import 'package:bengo_app/Features/Auth/presentation/views/sign_up_view.dart';
import 'package:bengo_app/Features/Balance/presentation/views/balance_top_up_success.dart';
import 'package:bengo_app/Features/Balance/presentation/views/balance_top_up_view.dart';
import 'package:bengo_app/Features/Courses/presentation/views/courses_view.dart';
import 'package:bengo_app/Features/Home/presentation/views/home_view.dart';
import 'package:bengo_app/Features/Home/presentation/views/search_view.dart';
import 'package:bengo_app/Features/Home/presentation/views/show_more_view.dart';
import 'package:bengo_app/Features/MyProfile/presentation/views/edit_my_profile_view.dart';
import 'package:bengo_app/Features/MyProfile/presentation/views/my_profile_view.dart';
import 'package:bengo_app/Features/Saved/presentation/views/saved_view.dart';
import 'package:bengo_app/Features/Support/presentation/views/support_view.dart';
import 'package:bengo_app/Features/course_details/presentation/view/course_details_view.dart';
import 'package:bengo_app/Features/layout/presentation/views/main_layout_view.dart';
import 'package:bengo_app/Features/onBoard/presentation/views/on_board_view.dart';
import 'package:bengo_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // Routes Names
  static const String kSplashView = '/';
  static const String kOnBoardView = '/onBoard';
  static const String kLoginView = '/loginview';
  static const String kSignUpView = '/signupview';
  static const String kCompleteProfileView = '/completeprofileview';
  static const String kHomeView = '/homeview';
  static const String kSearchView = '/searchview';
  static const String kBalanceTopUpView = '/balance/top-up';
  static const String kBalanceTopUpSuccess = '/balance/top-up/success';
  static const String kShowMoreView = '/show-more';
  static const String kMyProfileView = '/my-profile';
  static const String kSupportView = '/supportView';
  static const String kSavedView = '/savedView';
  static const String kCoursesView = '/coursesView';
  static const String kMainLayoutView = '/main-layout';
  static const String kEditMyProfileView = '/edit-my-profile';
  static const String kCourseDetailsView = '/course-detailsView';

  static final GoRouter router = GoRouter(
    initialLocation: kSplashView,
    debugLogDiagnostics: true, // مفيد أثناء التطوير

    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnBoardView,
        pageBuilder: (context, state) => _buildCustomTransitionPage(
          child: const OnBoardView(),
          state: state,
        ),
      ),
      GoRoute(
        path: kLoginView,
        pageBuilder: (context, state) =>
            _buildCustomTransitionPage(child: const LoginView(), state: state),
      ),
      GoRoute(
        path: kSignUpView,
        pageBuilder: (context, state) =>
            _buildCustomTransitionPage(child: const SignUpView(), state: state),
      ),
      GoRoute(
        path: kCompleteProfileView,
        pageBuilder: (context, state) => _buildCustomTransitionPage(
          child: const CompleteProfileView(),
          state: state,
        ),
      ),
      GoRoute(
        path: kHomeView,
        pageBuilder: (context, state) =>
            _buildCustomTransitionPage(child: const HomeView(), state: state),
      ),
      GoRoute(
        path: kSearchView,
        pageBuilder: (context, state) =>
            _buildCustomTransitionPage(child: const SearchView(), state: state),
      ),
      GoRoute(
        path: kBalanceTopUpView,
        pageBuilder: (context, state) => _buildCustomTransitionPage(
          child: const BalanceTopUp1View(),
          state: state,
        ),
      ),
      GoRoute(
        path: kBalanceTopUpSuccess,
        pageBuilder: (context, state) => _buildCustomTransitionPage(
          child: const BalanceTopUpSuccess(),
          state: state,
        ),
      ),
      GoRoute(
        path: kShowMoreView,
        pageBuilder: (context, state) => _buildCustomTransitionPage(
          child: const ShowMoreView(),
          state: state,
        ),
      ),
      GoRoute(
        path: kMyProfileView,
        pageBuilder: (context, state) => _buildCustomTransitionPage(
          child: const MyProfileView(),
          state: state,
        ),
      ),
      GoRoute(
        path: kSupportView,
        pageBuilder: (context, state) => _buildCustomTransitionPage(
          child: const SupportView(),
          state: state,
        ),
      ),
      GoRoute(
        path: kSavedView,
        pageBuilder: (context, state) =>
            _buildCustomTransitionPage(child: const SavedView(), state: state),
      ),
      GoRoute(
        path: kCoursesView,
        pageBuilder: (context, state) => _buildCustomTransitionPage(
          child: const CoursesView(),
          state: state,
        ),
      ),
      GoRoute(
        path: kMainLayoutView,
        pageBuilder: (context, state) => _buildCustomTransitionPage(
          child: const MainLayoutView(),
          state: state,
        ),
      ),
      GoRoute(
        path: kEditMyProfileView,
        pageBuilder: (context, state) => _buildCustomTransitionPage(
          child: const EditMyProfileView(),
          state: state,
        ),
      ),
      GoRoute(
        path: kCourseDetailsView,
        pageBuilder: (context, state) => _buildCustomTransitionPage(
          child: const CourseDetailsView(),
          state: state,
        ),
      ),
    ],
  );

  /// Helper method للـ Custom Transition (عشان الكود يبقى أنظف)
  static CustomTransitionPage _buildCustomTransitionPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      transitionDuration: const Duration(milliseconds: 650),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCubic,
        );

        return FadeTransition(
          opacity: curvedAnimation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.08),
              end: Offset.zero,
            ).animate(curvedAnimation),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
