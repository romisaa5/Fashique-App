import 'package:e_commerce/features/auth/forget%20password/presentation/views/forget_password.dart';
import 'package:e_commerce/features/auth/forget%20password/presentation/views/password_reset.dart';
import 'package:e_commerce/features/auth/forget%20password/presentation/views/set_new_password.dart';
import 'package:e_commerce/features/auth/forget%20password/presentation/views/verification_screen.dart';
import 'package:e_commerce/features/auth/login/presentation/views/login_view.dart';
import 'package:e_commerce/features/auth/register/presentation/views/register_view.dart';
import 'package:e_commerce/features/home/data/models/product.dart';
import 'package:e_commerce/features/home/presentation/ui/views/product_details.dart';
import 'package:e_commerce/features/nav_bar/presentation/views/bottom_nav_bar.dart';
import 'package:e_commerce/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:e_commerce/features/onboarding/presentation/views/welcome_view.dart';
import 'package:e_commerce/features/profile/presentation/ui/views/my_orders_view.dart';
import 'package:e_commerce/features/profile/presentation/ui/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppRouter {
  static final firstScreen = '/onboardingscreen1';
  static final welcomeView = '/welcomeview';
  static final loginView = '/loginview';
  static final registerView = '/registerview';
  static final forgetpasssword = '/forgetpassword';
  static final verificationScreen = '/verificationScreen';
  static final passwordreset = '/passwordreset';
  static final setnewpassword = '/setnewpassword';
  static final bottnavbar = '/bottomnavbar';
  static final detailsScreen = '/detailsScreen';
  static final settingsScreen = '/settingsScreen';
  static final ordersScreen = '/ordersScreen';

  static late final GoRouter router;

  static Future<void> initRouter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seenOnBoarding = prefs.getBool("onBoardingSeen") ?? false;
    router = GoRouter(
      initialLocation: seenOnBoarding ? firstScreen : loginView,
      routes: [
        GoRoute(
          path: firstScreen,
          builder: (context, state) => OnBoardingScreen(),
        ),
        GoRoute(path: welcomeView, builder: (context, state) => WelcomeView()),
        GoRoute(path: loginView, builder: (context, state) => LoginView()),
        GoRoute(
          path: registerView,
          builder: (context, state) => RegisterView(),
        ),
        GoRoute(
          path: forgetpasssword,
          builder: (context, state) => ForgetPassword(),
        ),
        GoRoute(
          path: verificationScreen,
          builder: (context, state) => VerificationScreen(),
        ),
        GoRoute(
          path: passwordreset,
          builder: (context, state) => PasswordReset(),
        ),
        GoRoute(
          path: setnewpassword,
          builder: (context, state) => SetNewPassword(),
        ),
        GoRoute(
          path: bottnavbar,
          builder: (context, state) => CustomBottomNavBar(),
        ),
        GoRoute(
          path: settingsScreen,
          builder: (context, state) => SettingsView(),
        ),
        GoRoute(
          path: ordersScreen,
          builder: (context, state) => MyOrdersView(),
        ),
        GoRoute(
          path: detailsScreen,
          builder: (context, state) {
            final product = state.extra as Product?;
            if (product == null) {
              return Scaffold(
                body: Center(child: Text("Error: No product data")),
              );
            }
            return ProductDetails(product: product);
          },
        ),
      ],
    );
  }
}
