import 'package:e_commerce/Featured/Auth/Forget%20password/presentation/views/forget_password.dart';
import 'package:e_commerce/Featured/Auth/Forget%20password/presentation/views/password_reset.dart';
import 'package:e_commerce/Featured/Auth/Forget%20password/presentation/views/set_new_password.dart';
import 'package:e_commerce/Featured/Auth/Forget%20password/presentation/views/verificationScreen.dart';
import 'package:e_commerce/Featured/Auth/Login/presentation/views/login_view.dart';
import 'package:e_commerce/Featured/Auth/Register/presentation/views/register_view.dart';
import 'package:e_commerce/Featured/Home/presentation/Views/product_details.dart';
import 'package:e_commerce/Featured/Home/presentation/models/product.dart';
import 'package:e_commerce/Featured/onboarding/presentation/views/first_screen.dart';
import 'package:e_commerce/Featured/onboarding/presentation/views/second_screen.dart';
import 'package:e_commerce/Featured/onboarding/presentation/views/third_screen.dart';
import 'package:e_commerce/Featured/onboarding/presentation/views/welcome_view.dart';
import 'package:e_commerce/core/widgets/Bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final firstScreen = '/onboardingscreen1';
  static final thirdScreen = '/onboardingscreen3';
  static final secondScreen = '/onboardingscreen2';
  static final welcomeView = '/welcomeview';
  static final loginView = '/loginview';
  static final registerView = '/registerview';
  static final forgetpasssword = '/forgetpassword';
  static final verificationScreen = '/verificationScreen';
  static final passwordreset = '/passwordreset';
  static final setnewpassword = '/setnewpassword';
  static final bottnavbar = '/bottomnavbar';
  static final detailsScreen = '/detailsScreen';
  static final router = GoRouter(
    initialLocation: firstScreen,
    routes: [
      GoRoute(
        path: firstScreen,
        builder: (context, state) => FirstScreen(),
      ),
      GoRoute(
        path: secondScreen,
        builder: (context, state) => SecondScreen(),
      ),
      GoRoute(
        path: thirdScreen,
        builder: (context, state) => ThirdScreen(),
      ),
      GoRoute(
        path: welcomeView,
        builder: (context, state) => WelcomeView(),
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) => LoginView(),
      ),
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
