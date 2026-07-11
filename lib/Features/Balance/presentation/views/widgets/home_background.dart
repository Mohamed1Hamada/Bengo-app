import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 58, 24, 0),
          child: Row(
            children: [
              Container(
                height: 48,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x12000000),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: const Text(
                  '416',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(width: 14),
              const Icon(Icons.notifications_none_rounded, size: 28),
              const Spacer(),
              const CircleAvatar(
                radius: 24,
                backgroundColor: Color(0xffd8d8d8),
                child: Icon(Icons.person, color: Colors.white),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 30, 24, 0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'الرئيسية',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
            ),
          ),
        ),
        const SizedBox(height: 34),
        Container(
          height: 110,
          margin: const EdgeInsets.only(left: 26),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(28),
            ),
            gradient: AppStyles.kSalaryHomeButton,
          ),
        ),
        const Spacer(),
        Container(
          height: 82,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Color(0x11000000))),
          ),
        ),
      ],
    );
  }
}
