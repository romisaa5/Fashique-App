import 'package:e_commerce/core/theme/app_theme.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppRouter.initRouter();
  runApp(FashiqueApp());
}

class FashiqueApp extends StatelessWidget {
  const FashiqueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Builder(
          builder: (context) {
            return MaterialApp.router(
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
              theme: AppTheme.theme,
            );
          },
        );
      },
    );
  }
}
