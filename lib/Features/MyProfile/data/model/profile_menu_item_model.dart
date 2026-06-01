import 'package:flutter/material.dart';

class ProfileMenuItemModel {
  final String id;
  final String title;
  final String iconPath; // صورة بدل IconData
  final Color iconBgColor;
  final Color? textColor;

  const ProfileMenuItemModel({
    required this.id,
    required this.title,
    required this.iconPath,
    required this.iconBgColor,
    this.textColor,
  });
}