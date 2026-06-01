import 'package:bengo_app/Features/MyProfile/data/profile_static_data.dart';
import 'package:bengo_app/Features/MyProfile/presentation/views/widgets/app_version_text.dart';
import 'package:bengo_app/Features/MyProfile/presentation/views/widgets/profile_balance_card.dart';
import 'package:bengo_app/Features/MyProfile/presentation/views/widgets/profile_header.dart';
import 'package:bengo_app/Features/MyProfile/presentation/views/widgets/profile_menu_section.dart';
import 'package:flutter/material.dart';

class MyProfileViewBody extends StatelessWidget {
  const MyProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header + Overlapping Balance Card
          Stack(
            clipBehavior: Clip.none,
            children: [
              const ProfileHeader(
                userProfileModel: ProfileStaticData.user,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: -40,
                child: ProfileBalanceCard(
                  balance: ProfileStaticData.user.balance,
                ),
              ),
            ],
          ),
          const SizedBox(height: 70),

          // Menu Items
           ProfileMenuSection(items: ProfileStaticData.menuItems),
          const SizedBox(height: 20),

          // App Version
          const AppVersionText(version: ProfileStaticData.appVersion),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}