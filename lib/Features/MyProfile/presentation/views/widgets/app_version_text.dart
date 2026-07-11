import 'package:bengo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AppVersionText extends StatelessWidget {
  final String version;

  const AppVersionText({super.key, required this.version});

  @override
  Widget build(BuildContext context) {
    return Text(
      version,
      style: Styles.textStyle12.copyWith(
        color: Color(0xff737373),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
