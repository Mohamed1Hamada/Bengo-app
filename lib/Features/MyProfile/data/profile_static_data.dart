import 'package:bengo_app/Features/MyProfile/data/model/profile_menu_item_model.dart';
import 'package:bengo_app/Features/MyProfile/data/model/user_profile_model.dart';
import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:flutter/material.dart';

class ProfileStaticData {
  ProfileStaticData._();

  static const UserProfileModel user = UserProfileModel(
    name: 'محمد أحمد',
    email: 'mohamed@example.com',
    avatar:
       'assets/images/profile icon.png',
    balance: 416,
  );

  static const String appVersion = 'الإصدار 1.0.0';

  static const List<ProfileMenuItemModel> menuItems = [
    ProfileMenuItemModel(
      id: 'edit_profile',
      title: 'تعديل البيانات',
      iconPath: AssetsData.editDataIcon,
      iconBgColor: Color(0xFF812365),
    ),
    ProfileMenuItemModel(
      id: 'share_app',
      title: 'مشاركة التطبيق',
      iconPath: AssetsData.shareAppIcon,
      iconBgColor: Color(0xFF812365),
    ),
    ProfileMenuItemModel(
      id: 'rate_app',
      title: 'تقييم التطبيق',
      iconPath: AssetsData.starIcon,
      iconBgColor: Color(0xFF812365),
    ),
    ProfileMenuItemModel(
      id: 'logout',
      title: 'تسجيل الخروج',
      iconPath: AssetsData.signOutIcon,
      iconBgColor: Color(0xFFF59E0B),
    ),
    ProfileMenuItemModel(
      id: 'delete_account',
      title: 'حذف الحساب',
      iconPath: AssetsData.deleteAccountIcon,
      iconBgColor: Color(0xFFEF4444),
      textColor: Color(0xFFEF4444),
    ),
  ];
}