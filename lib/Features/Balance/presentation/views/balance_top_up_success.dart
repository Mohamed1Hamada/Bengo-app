import 'package:bengo_app/Features/Balance/presentation/views/widgets/home_background.dart';
import 'package:bengo_app/Features/Balance/presentation/views/widgets/top_up_sheet.dart';
import 'package:flutter/material.dart';

class BalanceTopUpSuccess extends StatelessWidget {
  const BalanceTopUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: Stack(
        children: [
          const HomeBackground(),

          Container(color: Colors.black.withValues(alpha: .52)),

          const SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(24, 24, 24, 74),
                child: TopUpSheet(
                  isSuccess: true,
                  chargeCodeText: 'dfdsf343fdfdsf',
                  buttonText: 'تم الشحن بنجاح ✓',
                  buttonOpacity: .48,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
