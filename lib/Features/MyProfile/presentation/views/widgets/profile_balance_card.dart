import 'package:flutter/material.dart';
import 'balance_info.dart';
import 'recharge_balance_button.dart';

class ProfileBalanceCard extends StatelessWidget {
  final int balance;

  const ProfileBalanceCard({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const RechargeBalanceButton(),
          BalanceInfo(balance: balance),
        ],
      ),
    );
  }
}