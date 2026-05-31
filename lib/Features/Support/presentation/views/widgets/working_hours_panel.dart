import 'package:bengo_app/core/utlis/asstes.dart';
import 'package:bengo_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class WorkingHoursPanel extends StatelessWidget {
  const WorkingHoursPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xffeff3fd),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: AppStyles.kCustomGradient,
            ),
            child: Image(
              image: AssetImage(AssetsData.timerIcon),
              color: Colors.white,
              width: 24,
              height: 24,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ساعات العمل',
                  style: Styles.textStyle16.copyWith(
                    color: Color(0xff272323),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'السبت - الخميس',
                            style: Styles.textStyle12.copyWith(
                              color: Color(0xff7d8392),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'الجمعة',
                            style: Styles.textStyle12.copyWith(
                              color: Color(0xff7d8392),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '9 صباحا - 5 مساء',
                            style: Styles.textStyle12.copyWith(
                              color: Color(0xff1d2230),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            '2 ظهرا - 8 مساء',
                            style: Styles.textStyle12.copyWith(
                              color: Color(0xff1d2230),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
