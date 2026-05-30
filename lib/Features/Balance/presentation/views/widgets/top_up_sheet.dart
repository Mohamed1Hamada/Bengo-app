import 'package:bengo_app/Features/Balance/presentation/views/widgets/balance_info_box.dart';
import 'package:bengo_app/Features/Balance/presentation/views/widgets/charge_code_field.dart';
import 'package:bengo_app/Features/Balance/presentation/views/widgets/help_message_box.dart';
import 'package:bengo_app/Features/Balance/presentation/views/widgets/top_up_button.dart';
import 'package:bengo_app/Features/Balance/presentation/views/widgets/top_up_header.dart';
import 'package:flutter/material.dart';

import 'success_message_box.dart';


class TopUpSheet extends StatelessWidget {
  const TopUpSheet({
    super.key,
    this.isSuccess = false,
    this.chargeCodeText = 'أدخل كود الشحن',
    this.buttonText = 'شحن الرصيد',
    this.buttonOpacity = 1,
  });

  final bool isSuccess;
  final String chargeCodeText;
  final String buttonText;
  final double buttonOpacity;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Material(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const StaticTopUpHeader(),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const StaticBalanceInfoBox(),

                  if (isSuccess) ...[
                    const SizedBox(height: 20),
                    const StaticSuccessMessageBox(),
                  ],

                  const SizedBox(height: 20),

                  StaticChargeCodeField(
                    text: chargeCodeText,
                    isWrittenCode: isSuccess,
                  ),

                  const SizedBox(height: 16),

                  const StaticHelpMessageBox(),

                  const SizedBox(height: 20),

                  TopUpButton(
                    text: buttonText,
                    opacity: buttonOpacity,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}