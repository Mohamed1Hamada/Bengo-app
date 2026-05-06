import 'package:bengo_app/core/utlis/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BengoApp());
}

class BengoApp extends StatelessWidget {
  const BengoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        // scaffoldBackgroundColor: kPrimaryColor,
        fontFamily: 'Cairo',
        textTheme: ThemeData.dark().textTheme.copyWith(
          bodyMedium: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
