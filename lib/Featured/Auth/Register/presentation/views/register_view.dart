import 'package:e_commerce/Featured/Auth/Register/presentation/views/widgets/custom_confirm_password.dart';
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

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final passwordFocusNode = FocusNode();
  final confirmpasswordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.h,
              children: [
                SizedBox(height: 25.h),
                Text('Register', style: Styles.textStyle32),
                SizedBox(height: 5.h),
                Text('Email', style: Styles.textStyle14),
                CustomTextfieldForEmail(
                  passwordFocusNode: passwordFocusNode,
                  emailController: emailController,
                ),
                Text('Password', style: Styles.textStyle14),
                CustomTextfieldforPassword(
                  confirmpasswordFocusNode: confirmpasswordFocusNode,
                  passwordFocusNode: passwordFocusNode,
                  passwordController: passwordController,
                ),
                Text('Confirm Password', style: Styles.textStyle14),
                CustomConfirmPassword(
                  confirmpasswordController: confirmPasswordController,
                  confirmpasswordFocusNode: confirmpasswordFocusNode,
                ),

                CustomButton(
                  borderreduis: 2,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      GoRouter.of(context).push(AppRouter.bottnavbar);
                    }
                  },
                  text: 'Register',
                  color: KprimaryColor,
                  width: MediaQuery.of(context).size.width,
                ),
                CustomDevider(),
                CustomButtonSignupLogin(
                  imageIcon: 'assets/images/icons-google.png',
                  text: 'Register with Google',
                  color: Color(0xff000000),
                  width: MediaQuery.of(context).size.width,
                ),
                CustomButtonSignupLogin(
                  imageIcon: 'assets/images/icons-facebook-logo.png',
                  text: 'Register with Facebook',
                  color: Color(0xff000000),
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("already have an acount?", style: Styles.textStyle12),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.loginView);
                      },
                      child: Text(
                        '   Login',
                        style: Styles.textStyle12.copyWith(
                          color: KprimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
