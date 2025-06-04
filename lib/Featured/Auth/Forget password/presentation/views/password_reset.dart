import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Password reset",
              style: Styles.textStyle32,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Your password has been successfully reset. click confirm to set a new password",
              style: Styles.textStyle14.copyWith(color: Colors.grey),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButton(
              borderreduis: 2,
              onTap: () {
                GoRouter.of(context).push(AppRouter.setnewpassword);
              },
              text: "Confirm",
              color: KprimaryColor,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
