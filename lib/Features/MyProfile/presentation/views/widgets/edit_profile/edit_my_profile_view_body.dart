import 'package:bengo_app/core/utils/asstes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'edit_profile_header.dart';
import 'edit_profile_avatar.dart';
import 'edit_profile_form.dart';
import 'edit_profile_actions.dart';

class EditMyProfileViewBody extends StatelessWidget {
  const EditMyProfileViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              EditProfileHeader(onBack: () => Navigator.of(context).maybePop()),
              EditProfileAvatar(
                profileImageUrl: AssetsData.personProfile,
                name: 'محمد أحمد',
                onPick: null,
              ),
              const EditProfileForm(),
              EditProfileActions(
                onSave: () {
                  GoRouter.of(context).pop();
                },
                onCancel: () {
                  GoRouter.of(context).pop();
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}
