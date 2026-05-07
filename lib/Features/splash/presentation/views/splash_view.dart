import 'dart:async';

import 'package:bengo_app/Features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:bengo_app/core/utlis/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _navigationTimer;

  @override
  void initState() {
    super.initState();
    navigateToOnBoard();
  }

  void navigateToOnBoard() {
    _navigationTimer = Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      context.go(AppRouter.kOnBoardView);
    });
  }

  @override
  void dispose() {
    _navigationTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashViewBody());
  }
}
