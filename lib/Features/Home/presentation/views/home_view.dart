import 'package:bengo_app/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // خلفية رمادي فاتح جداً زي الفيجما
      body: const HomeViewBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF8A2387),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'كورساتي'),
          BottomNavigationBarItem(icon: Icon(Icons.headset_mic), label: 'الدعم'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'الحساب'),
        ],
      ),
    );
  }
}