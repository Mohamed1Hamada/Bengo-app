import 'package:bengo_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize(); // مهم جداً

  runApp(const BengoApp());
}

class BengoApp extends StatelessWidget {
  const BengoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(696, 1568), // نفس أبعاد التصميم اللي استخدمناها
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          theme: ThemeData(
            fontFamily: 'Cairo',
            textTheme: ThemeData.dark().textTheme.copyWith(
              bodyMedium: const TextStyle(color: Colors.white),
            ),
            // scaffoldBackgroundColor: kPrimaryColor, // لو هتستخدمه بعدين
          ),
          builder: (context, child) {
            // منع تكبير حجم الخط تلقائياً من إعدادات الجهاز
            return MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: TextScaler.noScaling),
              child: child!,
            );
          },
        );
      },
    );
  }
}
