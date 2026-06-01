import 'package:flutter/material.dart';
/// edit_profile_field_model.dart
///
/// نموذج حقل إدخال نصي في صفحة تعديل الملف الشخصي
class EditProfileFieldModel {
  final String id;
  final String label;
  final String placeholder;
  final IconData icon;
  final TextInputType type;
  final String value;
  const EditProfileFieldModel({
    required this.id,
    required this.label,
    required this.placeholder,
    required this.icon,
    required this.type,
    required this.value,
  });
}