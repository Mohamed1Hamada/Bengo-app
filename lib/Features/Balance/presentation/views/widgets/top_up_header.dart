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
          colors: [
            Color(0xffe32331),
            Color(0xffb3248c),
            Color(0xff1d2b73),
          ],
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            left: 20,
            top: 20,
            child: Icon(
              Icons.close_rounded,
              color: Colors.white,
              size: 28,
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
                    color: Colors.white.withOpacity(.18),
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
                const Text(
                  'شحن الرصيد',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
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