import 'package:flutter/material.dart';

abstract class Styles {
  static const textStyle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const textStyle22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const textStyle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static const textStyle28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const textStyle32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static const textStyle34 = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );
  static const textStyle48 = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w800,
  );

  static Gradient? get kMainGradient => null;
}

abstract class AppStyles {
  static const Color kGradientStartColor = Color(0xFFD32F2F);
  static const Color kGradientMidColor = Color(0xFF7B1FA2);
  static const Color kGradientEndColor = Color(0xFF1565C0);
  static const Color kLogoBadgeColor = Color(0xFF8A1BA4);

  static const LinearGradient kMainGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [kGradientStartColor, kGradientMidColor, kGradientEndColor],
  );

  // ====================== OnBoard Styles ======================
  static TextStyle onBoardTitleStyle = const TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    height: 1.1,
  );

  static TextStyle onBoardSubtitleStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    height: 1.3,
  );

  // Splash Styles
  static const TextStyle splashTitleStyle = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    height: 1,
  );

  static TextStyle splashSubtitleStyle = Styles.textStyle20.copyWith(
    color: Colors.white.withOpacity(0.89),
    fontWeight: FontWeight.w400,
    height: 1.2,
  );

  static const LinearGradient kSalaryHomeButton = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFD62828), Color(0xFF8B2575), Color(0xFF2A2575)],
  );
  static const LinearGradient kSalarySearchButton = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFD32F2F), Color(0xFF7B1FA2), Color(0xFF1565C0)],
  );
  
}
