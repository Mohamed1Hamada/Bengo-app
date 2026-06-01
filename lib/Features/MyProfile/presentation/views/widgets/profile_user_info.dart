import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class ProfileUserInfo extends StatelessWidget {
  final String name;
  final String email;

  const ProfileUserInfo({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: Styles.textStyle22.copyWith(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          email,
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w400,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}