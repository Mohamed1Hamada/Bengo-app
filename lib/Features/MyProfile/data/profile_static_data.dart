import 'package:bengo_app/Features/MyProfile/data/model/profile_menu_item_model.dart';
import 'package:bengo_app/Features/MyProfile/data/model/user_profile_model.dart';
import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class ProfileStaticData {
  ProfileStaticData._();

  static const UserProfileModel user = UserProfileModel(
    name: 'محمد أحمد',
    email: 'mohamed@example.com',
    avatar: 'assets/images/profile icon.png',
    balance: 416,
  );

  static const String appVersion = ' الإصدار 1.0.0';

  static final List<ProfileMenuItemModel> menuItems = [
    const ProfileMenuItemModel(
      id: 'edit_profile',
      title: 'تعديل البيانات',
      iconPath: AssetsData.editDataIcon,
      gradient: AppStyles.kCustomGradient,
    ),
    const ProfileMenuItemModel(
      id: 'share_app',
      title: 'مشاركة التطبيق',
      iconPath: AssetsData.shareAppIcon,
      gradient: AppStyles.kCustomGradient,
    ),
    ProfileMenuItemModel(
      id: 'rate_app',
      title: 'تقييم التطبيق',
      iconPath: AssetsData.starIcon,
      gradient: AppStyles.kCustomGradient,
    ),
    const ProfileMenuItemModel(
      id: 'logout',
      title: 'تسجيل الخروج',
      iconPath: AssetsData.signOutIcon,
      gradient: LinearGradient(
        colors: [Color(0xffF59E0B), Color(0xffF97316)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    const ProfileMenuItemModel(
      id: 'delete_account',
      title: 'حذف الحساب',
      iconPath: AssetsData.deleteAccountIcon,
      color: Color(0xFFEF4444),
      textColor: Color(0xFFEF4444),
     
    ),
  ];
}
