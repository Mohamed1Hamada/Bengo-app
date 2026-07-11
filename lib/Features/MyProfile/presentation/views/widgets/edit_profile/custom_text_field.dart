import 'package:bengo_app/Features/MyProfile/data/model/edit_profile_field_model.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
              Image.asset(field.pathImage, width: 20, height: 20),
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
            height: 52,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F3F5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextField(
              keyboardType: field.type,

              style: Styles.textStyle14.copyWith(
                color: const Color(0xFF272323),
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: field.placeholder,
                hintStyle: Styles.textStyle14.copyWith(
                  color: const Color(0xFF717182),
                  fontWeight: FontWeight.w500,
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
                ..selection = TextSelection.collapsed(
                  offset: field.value.length,
                ),
            ),
          ),
        ],
      ),
    );
  }
}
