import 'package:bengo_app/Features/Balance/presentation/views/widgets/top_up_sheet.dart';
import 'package:flutter/material.dart';

import 'package:bengo_app/features/home/presentation/views/widgets/home_view_body.dart';

class BalanceTopUp1View extends StatelessWidget {
  const BalanceTopUp1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xfff7f7f7),
        body: Stack(
          children: [
            const HomeViewBody(),

            Container(
              color: Colors.black.withOpacity(.52),
            ),

            const SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24, 24, 24, 74),
                  child: const StaticTopUpSheet(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}