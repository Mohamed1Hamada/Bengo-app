import 'package:bengo_app/Features/MyProfile/data/model/profile_menu_item_model.dart';
import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final ProfileMenuItemModel item;

  const ProfileMenuItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                // Back Arrow Image
                Image.asset(
                  AssetsData.backIcon, // ضيف ده في AssetsData
                  width: 16,
                  height: 16,
                  color: Colors.grey,
                ),
                const Spacer(),

                // Title
                Text(
                  item.title,
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                    color: item.textColor ?? Colors.black87,
                  ),
                ),
                const SizedBox(width: 12),

                // Icon Container with Image
                Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: item.iconBgColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    item.iconPath,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}