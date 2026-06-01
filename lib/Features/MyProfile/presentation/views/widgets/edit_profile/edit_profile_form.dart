import 'package:bengo_app/Features/MyProfile/data/edit_profile_static_data.dart';
import 'package:bengo_app/Features/MyProfile/data/model/dropdown_field_model.dart';
import 'package:bengo_app/Features/MyProfile/data/model/edit_profile_field_model.dart';
import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';
import 'custom_dropdown_field.dart';
/// edit_profile_form.dart
///
/// نموذج تعديل الملف الشخصي (يجمع الحقول النصية + القوائم)
class EditProfileForm extends StatelessWidget {
  const EditProfileForm({super.key});
  List<EditProfileFieldModel> get _textFields =>  [
        EditProfileFieldModel(
          id: 'fullName',
          label: 'الاسم الكامل',
          placeholder: 'أدخل اسمك الكامل',
          pathImage: AssetsData.nameIconSm,
          type: TextInputType.name,
          value: 'محمد أحمد',
        ),
        EditProfileFieldModel(
          id: 'email',
          label: 'البريد الإلكتروني',
          placeholder: 'example@domain.com',
          pathImage: AssetsData.mailIconSm,
          type: TextInputType.emailAddress,
          value: 'mohamed@example.com',
        ),
        EditProfileFieldModel(
          id: 'phone',
          label: 'رقم الهاتف',
          placeholder: '01xxxxxxxxx',
          pathImage: AssetsData.phoneIconSm,
          type: TextInputType.phone,
          value: '01234567890',
        ),
      ];
  List<DropdownFieldModel> get _dropdownFields => const [
        DropdownFieldModel(
          id: 'university',
          label: 'الجامعة',
          placeholder: 'اختر الجامعة',
          options: universities,
          value: 'جامعة القاهرة',
        ),
        DropdownFieldModel(
          id: 'college',
          label: 'الكلية',
          placeholder: 'اختر الكلية',
          options: colleges,
          value: 'كلية التجارة',
        ),
        DropdownFieldModel(
          id: 'department',
          label: 'القسم',
          placeholder: 'اختر القسم',
          options: departments,
          value: 'المحاسبة',
        ),
        DropdownFieldModel(
          id: 'studyYear',
          label: 'السنة الدراسية',
          placeholder: 'اختر السنة',
          options: studyYears,
          value: 'السنة الثانية',
        ),
      ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24 ),
      child: Column(
        children: [
          ..._textFields.map((field) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CustomTextField(field: field),
              )),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(
              color: Color(0xFFE2E8F0),
              thickness: 2,
            ),
          ),
          ..._dropdownFields.asMap().entries.map((entry) {
            final field = entry.value;
            String pathImage;
            switch (field.id) {
              case 'university':
                pathImage = AssetsData.universityIconSm;
                break;
              case 'college':
                pathImage = AssetsData.collegeIconSm;
                break;
              case 'department':
                pathImage = AssetsData.departmentIconSm;
                break;
              case 'studyYear':
                pathImage = AssetsData.studyYearIconSm;
                break;
              default:
                pathImage = AssetsData.universityIconSm;
            }
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CustomDropdownField(
                field: field,
                pathImage: pathImage,
              ),
            );
          }),
        ],
      ),
    );
  }
}