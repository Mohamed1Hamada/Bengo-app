import 'package:bengo_app/Features/Support/presentation/views/widgets/contact_method_tile.dart';
import 'package:bengo_app/Features/Support/presentation/views/widgets/hero_panel.dart';
import 'package:bengo_app/Features/Support/presentation/views/widgets/support_app_bar.dart';
import 'package:bengo_app/Features/Support/presentation/views/widgets/support_note.dart';
import 'package:bengo_app/Features/Support/presentation/views/widgets/working_hours_panel.dart';
import 'package:bengo_app/core/utils/asstes.dart';
import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SupportViewBody extends StatelessWidget {
  const SupportViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Column(
          children: [
            SupportAppBar(onBack: () => Navigator.maybePop(context)),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(22, 24, 22, 22),
                child: Column(
                  children: [
                    const HeroPanel(),
                    const SizedBox(height: 20),
                    const ContactMethodTile(
                      title: 'تواصل عبر واتساب',
                      subtitle: 'رد فوري على استفساراتك',
                      color: Color(0xff25D366),
                      imagePath: AssetsData.messageIcon,
                    ),
                    const SizedBox(height: 12),
                    const ContactMethodTile(
                      title: 'اتصال هاتفي مباشر',
                      subtitle: 'تحدث مع فريق الدعم مباشرة',
                      color: Color(0xff2196F3),
                      imagePath: AssetsData.phoneIcon,
                    ),
                    const SizedBox(height: 12),
                    ContactMethodTile(
                      title: 'البريد الإلكتروني',
                      subtitle: 'support@bengo.app',
                      gradient: AppStyles.kCustomGradient,
                      imagePath: AssetsData.mailIcon,
                    ),
                    const SizedBox(height: 20),
                    const WorkingHoursPanel(),
                    const SizedBox(height: 20),
                    const SupportNote(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
