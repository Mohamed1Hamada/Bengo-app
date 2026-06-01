import 'package:bengo_app/Features/MyProfile/data/model/edit_profile_field_model.dart';
import 'package:flutter/material.dart';

/// custom_text_field.dart
///
/// مكوّن إدخال نصي مخصّص مع أيقونة على اليمين (RTL)
class CustomTextField extends StatelessWidget {
  final EditProfileFieldModel field;

  const CustomTextField({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Image.asset(
                field.pathImage,
                width: 16,
                height: 16,
              ),
              const SizedBox(width: 6),
              Text(
                field.label,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF334155),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Container(
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextField(
              keyboardType: field.type,
              // textAlign: TextAlign.right,
              // textDirection: TextDirection.rtl,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1E293B),
              ),
              decoration: InputDecoration(
                hintText: field.placeholder,
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF94A3B8),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Color(0xFFC4B5FD),
                    width: 2,
                  ),
                ),
              ),
              controller: TextEditingController(text: field.value)
                ..selection = TextSelection.collapsed(offset: field.value.length),
            ),
          ),
        ],
      ),
    );
  }
}