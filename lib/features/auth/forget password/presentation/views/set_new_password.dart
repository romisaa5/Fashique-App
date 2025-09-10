import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/helper/validation_methods.dart';
import 'package:e_commerce/core/theme/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  final TextEditingController confirmpasswordController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: kBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Password reset", style: Styles.textStyle32),
            SizedBox(height: 5.h),
            Text(
              "Your password has been successfully reset. click confirm to set a new password",
              style: Styles.textStyle14.copyWith(color: Colors.grey),
            ),
            Text('Password', style: Styles.textStyle14),
            AppTextFormField(
              hintText: 'Password',
              validator: (value) => ValidationMethods.validatePassword(value),
              controller: passwordController,
            ),
            Text('Confirm Password', style: Styles.textStyle14),
            AppTextFormField(
              hintText: 'Confirm Password',
              validator:
                  (value) => ValidationMethods.validateConfirmPassword(value),
              controller: confirmpasswordController,
            ),
            SizedBox(height: 15),
            CustomButton(
              borderreduis: 2,
              text: 'Update Password',
              color: kprimaryColor,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
