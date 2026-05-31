import 'package:bengo_app/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:bengo_app/Features/Profile/presentation/views/profile_view.dart';
import 'package:bengo_app/Features/Saved/presentation/views/saved_view.dart';
import 'package:bengo_app/Features/Courses/presentation/views/courses_view.dart';
import 'package:bengo_app/Features/Support/presentation/views/widgets/support_view_body.dart';
import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class MainLayoutView extends StatefulWidget {
  const MainLayoutView({super.key});

  @override
  State<MainLayoutView> createState() => _MainLayoutViewState();
}

class _MainLayoutViewState extends State<MainLayoutView> {
  int _currentIndex = 4; // نبدأ بالرئيسية

  // تم الاحتفاظ بالقائمة كما هي مع ترتيب الـ Features الخاص بك
  final List<Widget> _pages = [
    const ProfileView(),
    const SavedView(),
    const SupportViewBody(),
    const CoursesView(),
    const HomeViewBody(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      
      // ريفاكتور: استخدام IndexedStack يضمن عدم تدمير حالة الصفحات عند التنقل
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 1),
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(index: 0, assetPath: AsstesData.profileIcon, label: 'الحساب'),
              _buildNavItem(index: 1, assetPath: AsstesData.saveIcon, label: 'المحفوظات'),
              _buildNavItem(index: 2, assetPath: AsstesData.supportIcon, label: 'الدعم'),
              _buildNavItem(index: 3, assetPath: AsstesData.coursesIcon, label: 'كورساتي'),
              _buildNavItem(index: 4, assetPath: AsstesData.homeIcon, label: 'الرئيسية'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String assetPath,
    required String label,
  }) {
    final bool isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // الأيقونة المتدرجة
          isSelected
              ? ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: AppStyles.kButtomNavBar.colors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds),
                  child: ImageIcon(AssetImage(assetPath), color: Colors.white, size: 26),
                )
              : ImageIcon(AssetImage(assetPath), color: Colors.grey.shade400, size: 26),
          
          const SizedBox(height: 6),

          // نص العنوان
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? Colors.black87 : Colors.grey.shade400,
            ),
          ),
          
          const SizedBox(height: 6),

          // النقطة المتحركة بالأسفل
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: isSelected
                  ? LinearGradient(
                      colors: AppStyles.kButtomNavBar.colors,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                  : null,
              color: isSelected ? null : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}