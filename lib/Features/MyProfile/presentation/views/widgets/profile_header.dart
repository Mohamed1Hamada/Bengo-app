import 'package:bengo_app/Features/MyProfile/data/model/user_profile_model.dart';
import 'package:bengo_app/Features/MyProfile/presentation/views/widgets/profile_avatar.dart';
import 'package:bengo_app/Features/MyProfile/presentation/views/widgets/profile_user_info.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final UserProfileModel userProfileModel;

  const ProfileHeader({super.key, required this.userProfileModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 70),
      decoration: const BoxDecoration(gradient: AppStyles.kCustomGradient),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_forward_rounded, color: Colors.white),
            ),
          ),
          const SizedBox(height: 4),

          // Avatar
          ProfileAvatar(),
          const SizedBox(height: 12),

          // Name & Email
          ProfileUserInfo(
            name: userProfileModel.name,
            email: userProfileModel.email,
          ),
        ],
      ),
    );
  }
}
