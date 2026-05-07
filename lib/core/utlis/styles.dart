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

  static const textStyle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const textStyle48 = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w800,
  );
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

  static const TextStyle splashTitleStyle = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    height: 1,
  );

  static TextStyle splashSubtitleStyle = Styles.textStyle18.copyWith(
    color: Colors.white,
    fontWeight: FontWeight.w400,
    height: 1.2,
  );

  static const TextStyle onBoardTitleStyle = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    height: 1.1,
  );

  static const TextStyle onBoardSubtitleStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    height: 1.2,
  );
}
