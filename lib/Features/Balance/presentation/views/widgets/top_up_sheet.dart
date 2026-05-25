import 'package:bengo_app/Features/Balance/presentation/views/widgets/balance_info_box.dart';
import 'package:bengo_app/Features/Balance/presentation/views/widgets/charge_code_field.dart';
import 'package:bengo_app/Features/Balance/presentation/views/widgets/help_message_box.dart';
import 'package:bengo_app/Features/Balance/presentation/views/widgets/top_up_header.dart';
import 'package:bengo_app/Features/Balance/presentation/views/widgets/top_up_button.dart';
import 'package:flutter/material.dart';


class StaticTopUpSheet extends StatelessWidget {
  const StaticTopUpSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: const Material(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StaticTopUpHeader(),
            Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  StaticBalanceInfoBox(),
                  SizedBox(height: 20),
                  StaticChargeCodeField(),
                  SizedBox(height: 16),
                  StaticHelpMessageBox(),
                  SizedBox(height: 20),
                  StaticTopUpButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}