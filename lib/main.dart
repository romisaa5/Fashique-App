import 'package:e_commerce/Featured/Auth/logic/cubit/authantication_cubit.dart';
import 'package:e_commerce/core/theme/app_theme.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/url_anonky.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: url, anonKey: onanKey);
  runApp(FashiqueApp());
}

class FashiqueApp extends StatelessWidget {
  const FashiqueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Builder(
          builder: (context) {
            return BlocProvider(
              create: (context) => AuthanticationCubit(),
              child: MaterialApp.router(
                routerConfig: AppRouter.router,
                debugShowCheckedModeBanner: false,
                theme: AppTheme.theme,
              ),
            );
          },
        );
      },
    );
  }
}
