import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class StaticTopUpHeader extends StatelessWidget {
  const StaticTopUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffe32331), Color(0xffb3248c), Color(0xff1d2b73)],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 20,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close, color: Colors.white),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: .18),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 24,
                        offset: Offset(0, 12),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'شحن الرصيد',
                  style: Styles.textStyle22.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
