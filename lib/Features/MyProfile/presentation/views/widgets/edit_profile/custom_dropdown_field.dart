import 'package:bengo_app/Features/MyProfile/data/model/dropdown_field_model.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
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
              Image.asset(pathImage, width: 20, height: 20),
              const SizedBox(width: 6),
              Text(
                field.label,
                style: Styles.textStyle16.copyWith(
                  color: const Color(0xFF272323),
                  fontWeight: FontWeight.w700,
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
                  style: Styles.textStyle14.copyWith(
                    color: const Color(0xFF94A3B8),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.right,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xFF94A3B8),
                ),
                style: Styles.textStyle14.copyWith(
                  color: const Color(0xFF272323),
                  fontWeight: FontWeight.w500,
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
