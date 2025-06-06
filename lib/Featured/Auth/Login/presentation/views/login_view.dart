import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_button_signup_login.dart';
import 'package:e_commerce/Featured/Auth/widgets/custom_devider.dart';
import 'package:e_commerce/Featured/Auth/widgets/custom_textfield_for_password.dart';
import 'package:e_commerce/Featured/Auth/widgets/custom_textfield_for_username.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.h,
              children: [
                SizedBox(height: 25.h),
                Text('Login', style: Styles.textStyle32),
                SizedBox(height: 15.h),
                Text('Email', style: Styles.textStyle14),
                CustomTextfieldForEmail(
                  passwordFocusNode: passwordFocusNode,
                  emailController: emailController,
                ),
                Text('Password', style: Styles.textStyle14),
                CustomTextfieldforPassword(
                  passwordFocusNode: passwordFocusNode,
                  passwordController: passwordController,
                ),
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.forgetpasssword);
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forget Passsword ?',
                      style: Styles.textStyle12.copyWith(color: kprimaryColor),
                    ),
                  ),
                ),
                CustomButton(
                  borderreduis: 2,
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      GoRouter.of(context).push(AppRouter.bottnavbar);
                    }
                  },
                  text: 'Login',
                  color: kprimaryColor,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(height: 10.h),
                CustomDevider(),
                SizedBox(height: 10.h),
                CustomButtonSignupLogin(
                  imageIcon: 'assets/images/icons-google.png',
                  text: 'Login with Google',
                  color: Color(0xff000000),
                  width: MediaQuery.of(context).size.width,
                ),
                CustomButtonSignupLogin(
                  imageIcon: 'assets/images/icons-facebook-logo.png',
                  text: 'Login with Facebook',
                  color: Color(0xff000000),
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an acount?", style: Styles.textStyle12),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.registerView);
                      },
                      child: Text(
                        '   Register',
                        style: Styles.textStyle12.copyWith(
                          color: kprimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
