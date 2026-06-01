import 'package:bengo_app/Features/MyProfile/data/model/dropdown_field_model.dart';
import 'package:flutter/material.dart';

/// custom_dropdown_field.dart
///
/// حقل قائمة منسدلة مخصص مع أيقونة
class CustomDropdownField extends StatelessWidget {
  final DropdownFieldModel field;
  final String pathImage;

  const CustomDropdownField({
    super.key,
    required this.field,
    required this.pathImage,
  });

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
                pathImage,
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                value: field.value.isEmpty ? null : field.value,
                hint: Text(
                  field.placeholder,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF94A3B8),
                  ),
                  textAlign: TextAlign.right,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xFF94A3B8),
                ),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1E293B),
                ),
                dropdownColor: Colors.white,
                borderRadius: BorderRadius.circular(16),
                items: field.options.map((option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(option),
                    ),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}