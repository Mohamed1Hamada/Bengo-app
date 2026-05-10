import 'package:bengo_app/Features/onBoard/presentation/views/on_board_view.dart';
import 'package:bengo_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // Routes Names
  static const String kSplashView = '/';
  static const String kOnBoardView = '/onBoard';

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