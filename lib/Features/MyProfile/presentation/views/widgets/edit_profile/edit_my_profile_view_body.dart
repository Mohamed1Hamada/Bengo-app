import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:flutter/material.dart';
import 'edit_profile_header.dart';
import 'edit_profile_avatar.dart';
import 'edit_profile_form.dart';
import 'edit_profile_actions.dart';
/// edit_my_profile_view_body.dart
///
/// جسم صفحة تعديل الملف الشخصي (يجمع الهيدر + الصورة + النموذج + الأزرار)
class EditMyProfileViewBody extends StatelessWidget {
  const EditMyProfileViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              EditProfileHeader(
                onBack: () => Navigator.of(context).maybePop(),
              ),
               EditProfileAvatar(
                profileImageUrl: AssetsData.personProfile,
                name: 'محمد أحمد',
                onPick: null,
              ),
              const EditProfileForm(),
              EditProfileActions(
                onSave: () {},
                onCancel: () {},
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}