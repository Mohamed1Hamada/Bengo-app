import 'package:flutter/material.dart';

class ProfileMenuItemModel {
  final String id;
  final String title;
  final String iconPath; // صورة بدل IconData
  final Color? color;
  final Gradient? gradient;
  final Color? textColor;
 

  const ProfileMenuItemModel({
    required this.id,
    required this.title,
    required this.iconPath,
  this.color,
    this.gradient,
    this.textColor,
    
  });
}