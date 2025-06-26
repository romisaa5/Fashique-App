import 'package:e_commerce/Featured/Profile/helper/modelbottomsheet_for_edit_setting.dart';
import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Settings'),
      body: Padding(
        padding: EdgeInsets.all(16.0.h),
        child: Column(
          spacing: 10.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h),
            Text(
              'Personal Information',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5.h),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.person, color: kprimaryColor),
              ),
              title: Text('Change Name', style: Styles.textStyle16),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {
                showCustomBottomSheet(
                  context,
                  'Change Name',
                  'Enter your new name',
                );
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.lock_outline, color: kprimaryColor),
              ),
              title: Text('Change Password', style: Styles.textStyle16),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {
                showCustomBottomSheet(
                  context,
                  'Change Password',
                  'Enter your new password',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
