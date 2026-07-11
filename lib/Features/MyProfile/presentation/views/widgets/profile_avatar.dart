import 'package:bengo_app/core/utils/asstes.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withValues(alpha: 0.2),
      ),
      child: CircleAvatar(
        radius: 42,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(AssetsData.personProfile),
      ),
    );
  }
}
