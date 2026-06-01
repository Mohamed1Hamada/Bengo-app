import 'package:bengo_app/Features/MyProfile/data/model/profile_menu_item_model.dart';
import 'package:bengo_app/Features/MyProfile/presentation/views/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfileMenuSection extends StatelessWidget {
  final List<ProfileMenuItemModel> items;

  const ProfileMenuSection({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: items.map((item) => ProfileMenuItem(item: item)).toList(),
      ),
    );
  }
}