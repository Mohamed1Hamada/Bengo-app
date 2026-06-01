import 'package:bengo_app/Features/MyProfile/presentation/views/widgets/my_profile_view_body.dart';
import 'package:flutter/material.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: SafeArea(
        bottom: false,
        child: MyProfileViewBody(),
      ),
    );
  }
}