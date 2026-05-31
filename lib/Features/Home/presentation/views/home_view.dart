import 'package:bengo_app/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 4; // نبدأ بصفحة الرئيسية

  final List<Widget> _pages = [
    const Center(child: Text("صفحة الحساب")),
    const Center(child: Text("صفحة المحفوظات")),
    const Center(child: Text("صفحة الدعم")),
    const Center(child: Text("صفحة كورساتي")),
    const HomeViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: _pages[_currentIndex],
      // نستخدم Container مخصص ليعطينا الحواف الدائرية الموضحة في الصورة
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 1,
            ),
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

  // ودجت مخصصة لبناء كل عنصر في القائمة السفلية
  Widget _buildNavItem({
    required int index,
    required String assetPath,
    required String label,
  }) {
    final bool isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      behavior: HitTestBehavior.opaque, // لتوسيع منطقة النقر
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. الأيقونة بالتدرج اللوني إذا كانت مختارة
          isSelected
              ? ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: AppStyles.kButtomNavBar.colors,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(bounds);
                  },
                  child: ImageIcon(
                    AssetImage(assetPath),
                    color: Colors.white,
                    size: 26,
                  ),
                )
              : ImageIcon(
                  AssetImage(assetPath),
                  color: Colors.grey.shade400,
                  size: 26,
                ),
          const SizedBox(height: 6),

          // 2. نص العنوان (يكون غامقاً عند الاختيار ورمادياً عند عدم الاختيار)
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? Colors.black87 : Colors.grey.shade400,
            ),
          ),
          const SizedBox(height: 6),

          // 3. النقطة المتدرجة أسفل الأيقونة المختارة
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // تظهر الألوان المتدرجة للنقطة فقط إذا كان العنصر مختاراً، وإلا تختفي
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