import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/helper/validation_methods.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 25,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Forget Password', style: Styles.textStyle32),
            Text(
              'Please enter your email to reset the password',
              style: Styles.textStyle16,
            ),
            Text('Your Email ', style: Styles.textStyle14),
            AppTextFormField(
              hintText: 'Email',
              validator: (value) => ValidationMethods.validateEmail(value),
              controller: emailController,
            ),
            CustomButton(
              borderreduis: 2,
              text: 'Reset Password',
              color: kprimaryColor,
              width: MediaQuery.of(context).size.width,
              onTap: () {
                GoRouter.of(context).push(AppRouter.verificationScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
